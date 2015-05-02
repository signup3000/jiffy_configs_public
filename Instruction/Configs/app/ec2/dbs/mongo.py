def run(**kwargs):

    cluster = kwargs["cluster"]
    instance = kwargs["instance"]
    hostname = kwargs["hostname"]
    image = kwargs["image"]
    security_group = kwargs["security_group"]
    key = kwargs["key"]
    region = kwargs["region"]
    placement = kwargs["placement"]
    size = kwargs["size"]
    retries = kwargs["retries"]

    orders = []
    preorders = []

    #Create server
    inputted = {"name":"cloud-ec2-server:1", \
            "cluster":cluster, \
            "instance":instance,\
            "arguments":"hostname=%s size=%s image=%s security_group=%s key=%s region=%s placement=%s retries=%s" % (hostname,size,image,security_group,key,region,placement,retries)}

    order = { "type": "instruction::method" , \
           "method": "instruction", \
           "pargs": "orders add instruction", \
           "inputted": inputted
            }

    orders.append(order)

    #Add hostname
    inputted = {"cluster":cluster, "instance":instance,"hostname":hostname, "tags":"mongodb db","share":"yes"}

    order = { "type": "host::method" , \
           "method": "host", \
           "pargs": "host add", \
           "inputted": inputted
            }

    orders.append(order)

    #Assign groups 
    inputted = {"groups":'Base:1:1 Base/SSH_Access:1:1 Ubuntu/Base:1:1 Ubuntu/12.04/Mongo/Install:1:1', "hostname":hostname}

    order = { "type": "assign::method" , \
           "method": "assign", \
           "pargs": "task host assign", \
           "inputted": inputted
            }

    orders.append(order)

    #Create orders for host
    inputted = {"hostname":hostname}

    order = { "type": "orders::method" , \
           "method": "orders", \
           "pargs": "orders add host", \
           "inputted": inputted
            }

    orders.append(order)

    #Bootstap host
    inputted = {"hostname":hostname, "keyname":key,"user":"ubuntu","ip_key":"public_ips"}

    order = { "type": "bootstrap::method" , \
           "method": "bootstrap", \
           "pargs": "host bootstrap", \
           "inputted": inputted
            }

    orders.append(order)

    return orders,preorders

def example():


    '''

    #Available Arguments:

    cluster = kwargs["cluster"]
    instance = kwargs["instance"]
    hostname = kwargs["hostname"]
    image = kwargs["image"]
    security_group = kwargs["security_group"]
    key = kwargs["key"]
    region = kwargs["region"]
    placement = kwargs["placement"]
    size = kwargs["size"]
    retries = kwargs["retries"]

    #Called (e.g.)

        hostname = "%s-%s-mongodb-%d" % (cluster,instance,db_num)

        placement = placements[0]
        del placements[0]
        placements.append(placement)

        arguments = "hostname=%s size=%s image=%s retries=%s timeout=%s security_group=%s key=%s region=%s placement=%s" % \\
        (hostname, size, image, retries, timeout, security_group, key, region, placement)

        #Create server
        inputted = {"name":"app-ec2-dbs-mongo:3", \\
                "cluster":cluster, \\
                "instance":instance, \\
                "hostname":hostname, \\
                "arguments":arguments}

        order = { "type": "instruction::method" , \\
               "method": "instruction", \\
               "dependencies": None, \\
               "pargs": "orders add instruction", \\
               "inputted": inputted
                }

        orders.append(order)

    '''

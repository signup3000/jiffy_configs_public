
def default():
    
    return nginx()

def varnish():

    task = {}
    run_list = []
    roles = []
    include_cookbooks = []


    run_list.append({'cookbook':'varnish','recipe':'default','version':1})

    roles.append({'role_name':'general-varnish', 'version':1})

    task['method'] = 'chef'
    task['metadata'] = {'run_list': run_list, \
                       'roles': roles, \
                       'include_cookbooks': include_cookbooks \
                       }

    return task


def default():
    files_exclude=[]
    
    files_exclude.append("r,/usr")
    files_exclude.append("r,/usr/lib")
    files_exclude.append("r,/usr/share")
    files_exclude.append("r,/etc")
    files_exclude.append("r,/etc/nagios3")
    files_exclude.append("r,/etc/jiffy/rules.pyc")
    files_exclude.append("r,/etc/jiffy/rules.pyc")
    files_exclude.append("r,/etc/jiffy/rules.pyc")
    files_exclude.append("a,/opt/jiffy/Configs/Ubuntu-10.04-LTS/Test/CHROOTFILES/etc/test")

    return files_exclude

def test():
    job=[ 1, 3, 4 ]
    return job

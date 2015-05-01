name "tomcat_attr"
description "tomcat_attr"
default_attributes(
   :shared => {
        :config => {
            :nodes_file => "/opt/shared/configs/tomcat.yml"
            }
        },
   :tomcat => {
        :java_options => "${JAVA_OPTS} -Xmx128M -Djava.awt.headless=true",
        :port => 8080,
        :base_version => 7,
        :ssl_port => 8443,
        :loglevel => "INFO",
        :max_threads => 200,
        },
   :java => {
        :jdk_version => 7
        }
)


name "galeracluster_attr"
description "galera_cluster_attr"
default_attributes(
   :shared => {
        :config => {
            :nodes_file => "/opt/shared/configs/galera.yml"
            }
        },
   :mysql => {
        :tunable => {
            :binlog_format => "ROW",
            :bind_address => "0.0.0.0",
            :autoinc_lock_mode => 2
            }
        },
   :wsrep => {
        :provider => "/usr/lib/galera/libgalera_smm.so",
        :cluster_name => "my_galera_cluster",
        :cluster_nodes => "127.0.0.1",
        :sst_method => "rsync"
        }
)

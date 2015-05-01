name "general-mongo"
description "mongodb base"
default_attributes "mongodb" => {
  "dbpath" => "/var/lib/mongodb",
  "logpath" => "/var/log/mongodb",
  "port" => 27017,
  "init_dir" => "/etc/init.d",
  "root_group" => "root",
  "user" => "moongodb",
  "group" => "moongodb",
  "enable_rest" => false
}


name "general-varnish"
description "varnish base"

default_attributes "varnish" => { 
  "dir" => "/etc/varnish",
  "default" => "/etc/default/varnish"
}


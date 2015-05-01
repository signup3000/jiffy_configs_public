name "general-runit"

description "runit base"

default_attributes "runit" => { 
  "sv_bin" => "/usr/bin/sv",
  "chpst_bin" => "/usr/bin/chpst",
  "service_dir" => "/etc/service",
  "sv_dir" => "/etc/sv"
}

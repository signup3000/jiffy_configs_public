name "nginx_passenger"
description "nginx_passenger"
default_attributes(
   :ruby => {
       :build => {
          :version => "1.9.3-p385"
       }
   },
   :nginx => {
       :version => "1.4.7",
       :dir => "/etc/nginx",
       :log_dir => "/var/log/nginx",
       :binary => "/opt/nginx-1.4.7/sbin",
       :user => "www-data",
       :init_style => "init",
       :source => {
           :modules => [
               "nginx::http_stub_status_module",
               "nginx::http_ssl_module",
               "nginx::http_gzip_static_module",
               "nginx::passenger",
               ]
           },
           :passenger => {
               :version => "3.0.21",
               :ruby => "/usr/local/bin/ruby",
               :root => "/usr/local/lib/ruby/gems/1.9.1/gems/passenger-3.0.21"
           }
   }
)

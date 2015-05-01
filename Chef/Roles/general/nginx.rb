name "general-nginx"
description "nginx base"
default_attributes "nginx" => {
  "version" => "1.2.6"
  "log_dir" => "/var/log/nginx",
  "dir" => "/etc/nginx",
  "user" => "www-data",
  "binary" => "/usr/sbin/nginx",
  "gzip" => "on",
  "gzip_http_version" => "1.0",
  "gzip_comp_level" => "2",
  "gzip_proxied" => "any",
  "gzip_types" => [
      "text/plain",
      "text/html",
      "text/css",
      "application/x-javascript",
      "text/xml",
      "application/xml",
      "application/xml+rss",
      "text/javascript"
    ],
  "keepalive" => "on",
  "keepalive_timeout" => "65",
  "worker_connections" => "2048",
  "server_names_hash_bucket_size" => 64
}


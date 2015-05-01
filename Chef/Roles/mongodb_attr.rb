name "mongodb_attr"
description "mongodb_attr"
override_attributes(
   :mongodb => {
       :package_version => "2.6.4",
       :install_method => "mongodb-org"
   }
)

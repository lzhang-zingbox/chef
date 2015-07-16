name        "zingcloud"
description "Installs and configures zingcloud"
maintainer  "AWS OpsWorks"
license     "Apache 2.0"
version     "1.0.0"

depends "opsworks_commons"

recipe "zingcloud::zk", "Installs zk"
recipe "zingcloud::connector", "Installs connector"

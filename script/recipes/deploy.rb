bash "update conf file" do
  user "root"
  cwd "/test"
  code <<-EOH
    echo "tickTime=2000" > /opt/zookeeper/zookeeper-3.4.6/conf/zoo.cfg
    echo "dataDir=/var/lib/zookeeper" >> /opt/zookeeper/zookeeper-3.4.6/conf/zoo.cfg
    echo "clientPort=2181" >> /opt/zookeeper/zookeeper-3.4.6/conf/zoo.cfg
    echo "initLimit=5" >> /opt/zookeeper/zookeeper-3.4.6/conf/zoo.cfg
    echo "syncLimit=2" >> /opt/zookeeper/zookeeper-3.4.6/conf/zoo.cfg
    aws s3 sync s3://instancesfolder/ /tmp
    cat zk* >> /opt/zookeeper/zookeeper-3.4.6/conf/zoo.cfg
  EOH
end

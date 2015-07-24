bash "update conf file" do
  user "root"
  cwd "/test"
  code <<-EOH
    aws s3 sync s3://instancesfolder/ /tmp
    cat zk* >> /opt/zookeeper/zookeeper-3.4.6/conf/zoo.cfg
  EOH
end

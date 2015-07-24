bash "add test file" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    host=`hostname`
    hostid=`hostname|cut -b 3`
    ip=`ifconfig eth0 |grep "inet add" | awk '{print $2}' | cut -d ":" -f2` 
    touch ${host}
    echo server.${hostid}=${ip} > ${host} 
    aws s3 cp zk* s3://instancesfolder/
    rm zk*
  EOH
end

bash "generate instance id file" do
  user "root"
  cwd "/var/lib/zookeeper"
  code <<-EOH
    hostname|cut -b 3 > myid
  EOH
end



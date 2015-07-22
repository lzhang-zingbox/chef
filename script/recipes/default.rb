bash "add test file" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    touch hello_world
    mkdir -p 
  EOH
  not_if do
    File.exists?("/tmp/hello_world")
  end
end

bash "generate instance id file" do
  user "root"
  cwd "/var/lib"
  mkdir zookeeper
  hostname|cut -b 3 > myid
  not_if do
    File.exists("/var/lib/zookeeper/myid")
  end
end

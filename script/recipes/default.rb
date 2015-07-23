bash "add test file" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    touch hello_world 
  EOH
  not_if do
    File.exists?("/tmp/hello_world")
  end
end

bash "generate instance id file" do
  user "root"
  cwd "/var/lib/zookeeper"
  code <<-EOH
  hostname|cut -b 3 > myid
  EOH
  not_if do
    File.exists("/var/lib/zookeeper/myid")
  end
end

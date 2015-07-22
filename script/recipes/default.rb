bash "cluster_test" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    touch hello_world
  EOH
  not_if do
    File.exists?("/tmp/hello_world")
  end
end

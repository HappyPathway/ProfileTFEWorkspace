resource "null_resource" "profiler" {
  provisioner "local-exec" {
    command = "sudo apt-get install -y facter"
  }
  
  provisioner "local-exec" {
    command = "sudo facter"
  }
}


  

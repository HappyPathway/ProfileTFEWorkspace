resource "null_resource" "profiler" {
  provisioner "local-exec" {
    command = "sudo apt-get install facter"
  }
  
  provisioner "local-exec" {
    command = "facter"
  }
}


  

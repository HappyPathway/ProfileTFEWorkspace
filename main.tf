
data "external" "random_bytes" {
  program = ["python", "${path.module}/scripts/random_output.py"]
}

resource "null_resource" "profiler" {
  provisioner "local-exec" {
    command = "sudo apt-get update"
  }
  
  provisioner "local-exec" {
    command = "sudo apt-get install -y facter net-tools"
  }
  
  provisioner "local-exec" {
    command = "sudo facter"
  }
  
  provisioner "local-exec" {
    command = "sudo ps auxw"
  }
  
  provisioner "local-exec" {
    command = "sudo netstat -natp"
  }
  
}


  

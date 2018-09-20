resource "random_pet" "server" {
  length    = 3
  separator = "-"
}

resource "null_resource" "server" {
  provisioner "local-exec" {
    command = "echo ${random_pet.server.id}"
  }
}

resource "null_resource" "helloWorld1" {
  provisioner "local-exec" {
    command = "echo hello world"
  }
}

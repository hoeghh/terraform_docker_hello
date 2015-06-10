# terraform_docker_hello
A small example on how to use Terraform to start Docker containers.
This example shows how to start a Jenkins server on port 80.

Edit the file docker_hello.tf and replace my ip, to your docker ip. 
The Docker daemon needs to listen on a socket for this to work.

In the folder, start it with :
terraform plan
terraform apply

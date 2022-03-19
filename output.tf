#output "instance_ip_addr" {
#  value= aws_instance
#}

output "sample" {
  value= "Hello World"
}

output "abc" {
  value= "123"
}

variable "efg" {
  default="100"
}

output  "efg" {
  value=var.efg
}
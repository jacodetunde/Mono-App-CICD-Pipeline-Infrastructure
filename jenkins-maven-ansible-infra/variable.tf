# variable "linux2" {
#   description = "amazon linux 2"
#   type = string
#   default = "ami-0f844a9675b22ea32"
# }

# variable "ubuntu" {
#   description = "ubuntu 20.04 free tier"
#   type = string
#   default = "ami-0261755bbcb8c4a84"
# }

variable "linux2" {
  description = "amazon linux 2"
  type = string
  default = "ami-03eb6185d756497f8"
}

variable "ubuntu" {
  description = "ubuntu 20.04 free tier"
  type = string
  default = "ami-0261755bbcb8c4a84"
}

variable "keypair" {
  description = "keypair"
  type = string
  default = "virginia-keypair"
}

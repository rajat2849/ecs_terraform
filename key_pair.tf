#key_pair
resource "aws_key_pair" "tf-key" {
  key_name   = "tf-key1"
  public_key = file("${path.module}/id_rsa.pub")

} 
# resource "tls_private_key" "pk" {
#   algorithm = "RSA"t
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "kp" {
#   key_name   = "myKey"       # Create a "myKey" to AWS!!
#   public_key = tls_private_key.pk.public_key_openssh

#   provisioner "local-exec" { # Create a "myKey.pem" to your computer!!
#     command = "echo '${tls_private_key.pk.private_key_pem}' > ./myKey1.pem"
#   }
# }  
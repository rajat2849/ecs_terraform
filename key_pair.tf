#key_pair
resource "aws_key_pair" "tf-key" {
  key_name   = "tf-key1"
  public_key = file("${path.module}/id_rsa.pub")

} 
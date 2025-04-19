
provider "aws" {
  region = "us-east-1"
}

# Create a new Lightsail Key Pair
resource "aws_lightsail_key_pair" "lg_key_pair" {
  name = "key_pair"
}
# Create a Lightsail instance
resource "aws_lightsail_instance" "docker_server" {
  name              = "docker-server"
  availability_zone = "us-east-1a" # Change to your preferred AZ
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_2_0"  # Change to your preferred instance size
  key_pair_name     = aws_lightsail_key_pair.lg_key_pair.name

}

  # User data to install Docker

              #!/bin/bash
               Update the system
              sudo yum update -y
              
              # Install Docker prerequisites
              sudo yum install -y yum-utils device-mapper-persistent-data lvm2
              
              # Add Docker repository
              sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
              
              # Install Docker
              sudo yum install -y docker-ce docker-ce-cli containerd.io
              
              # Start and enable Docker service
              sudo systemctl start docker
              sudo systemctl enable docker
              
              # Add ec2-user to docker group (Lightsail uses ec2-user by default)
              sudo usermod -aG docker ec2-user
              
              # Verify Docker installation
              docker --version
              EOF

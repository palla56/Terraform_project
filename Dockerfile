# Use an official Terraform runtime as a base image
FROM hashicorp/terraform:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Initialize Terraform (uncomment if needed)
# RUN terraform init

# Apply Terraform configuration
CMD ["terraform init"]
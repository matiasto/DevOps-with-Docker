#!/bin/bash

# Check if the required number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Incorrect number of arguments provided"
    exit 1
fi

# Check if Docker Hub credentials are provided
if [ -z "$DOCKER_USER" ] || [ -z "$DOCKER_PWD" ]; then
    echo "Environment variables DOCKER_USER and DOCKER_PWD must be set"
    exit 1
fi

# Extract the repository name from the provided GitHub repository
repo_name=$(basename "$1")

# Clone the GitHub repository
git clone "https://github.com/$1.git"

# Change to the cloned repository directory
cd "$repo_name" || exit

# Build the Docker image
docker_image="$2"
docker build -t "$docker_image" .

# Log in to Docker Hub
echo "Logging in to Docker Hub..."
echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin

# Push the Docker image to Docker Hub
docker push "$docker_image"

# Cleanup
cd ..
rm -rf "$repo_name"

echo "Docker image successfully built and pushed to $docker_image"

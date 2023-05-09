# Use an official Docker image with Docker CLI, Git and Bash pre-installed
FROM docker:23-git

# Copy the builder.sh script into the image
COPY builder.sh .

# Make the script executable
RUN chmod +x builder.sh

# Set the entrypoint to execute the builder.sh script
ENTRYPOINT ["/bin/sh", "builder.sh"]

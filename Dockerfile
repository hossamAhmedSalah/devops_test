# Use TensorFlow Serving as base image
FROM tensorflow/serving:latest

# Copy the model and configuration files into the container
COPY models/ /models/

# Create a script to run TensorFlow Serving and keep the container running
COPY run_server.sh /models/run_server.sh
RUN chmod +x /models/run_server.sh

# Set the entrypoint to run the script
ENTRYPOINT ["/models/run_server.sh"]
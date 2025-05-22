# Use the official n8n image as base (recommended)
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Optional: install additional dependencies or customizations here
# RUN apt-get update && apt-get install -y <your-packages>

# Expose the default n8n port
EXPOSE 5678

# Define environment variables (can be overridden at runtime)
ENV N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=admin \
    N8N_HOST=0.0.0.0 \
    N8N_PORT=5678

# Start n8n
CMD ["n8n"]
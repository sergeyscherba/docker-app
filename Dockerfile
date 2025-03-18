# Use the official Alpine Linux image as the base
FROM alpine:3.10

# Set the maintainer label
LABEL maintainer="your-email@example.com"

# Update Alpine and install any dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache \
    bash \
    curl \
    && rm -rf /var/cache/apk/*

# Set a working directory inside the container
WORKDIR /app

# Copy application files into the container (if any)
# COPY . /app

# Expose a port (if needed)
EXPOSE 8080

# Command to run when the container starts
CMD ["sh"]

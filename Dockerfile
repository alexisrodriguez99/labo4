FROM node:16

# Create a new user and group
RUN addgroup -g 1001 myappgroup && \
    adduser -D -u 1001 -G myappgroup myappuser

# Set the working directory and grant permissions to the new user
RUN mkdir -p /app && chown -R myappuser:myappgroup /app
WORKDIR /app

# Switch to the new user
USER myappuser

# Copy and install dependencies

# Copy the rest of the app files and expose the port
COPY . .
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

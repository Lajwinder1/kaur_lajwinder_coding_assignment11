# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Navigate to the React app directory
WORKDIR /app/kaur_lajwinder_site

# Expose port 7775 to the outside world
EXPOSE 7775

# Run app when the container launches
CMD ["npm", "start"]

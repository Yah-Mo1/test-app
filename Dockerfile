# 🐳 Use a lightweight Node.js image as the base
FROM node:alpine

# 🏗 Set the working directory inside the container
WORKDIR /usr/src/app

# 📂 Copy the rest of the application files
COPY . .

# 🔧 Install dependencies
RUN npm install 

# 🚀 Expose the application port
EXPOSE 3000

# 🏁 Start the application
CMD ["npm", "run", "start"]
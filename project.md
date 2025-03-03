# 🐳 Dockerised Node.js App with MongoDB

## 📖 Overview

This project sets up a **Node.js application** with a **MongoDB database** using Docker and Docker Compose. The configuration ensures **data persistence, automatic database seeding, and efficient service management**.

---

## 🚀 Features

✅ **Multi-container setup** (Node.js app + MongoDB)  
✅ **Automatic MongoDB seeding** using `seed.js`  
✅ **MongoDB Health Check** to ensure app starts only when DB is ready  
✅ **Data persistence** with Docker volumes  
✅ **Production-ready setup** with best practices

---

## 🏗️ Setup & Installation

### **1️⃣ Prerequisites**

- Install [Docker](https://www.docker.com/get-started)
- Install [Docker Compose](https://docs.docker.com/compose/install/)

### **2️⃣ Build & Run the Project**

Run the following command to start the services:

```plaintext
docker-compose up -d --build
```

### **3️⃣ Verify Services**

- **App Running:** Visit `http://localhost:3000` 🌍
- **Database Connection:**
  ```plaintext
  docker exec -it mongo mongosh
  use posts
  db.posts.find().pretty()
  ```

### **4️⃣ Stop the Services**

```plaintext
docker-compose down
```

This will **stop and remove all containers** but retain data.

---

## 🐳 **Dockerfile Explanation**

1️⃣ **Uses `node:alpine`** as the base image for a lightweight build.
2️⃣ **Sets `/usr/src/app` as the working directory**.
3️⃣ **Installs dependencies efficiently**.
4️⃣ **Copies the application files** into the container.
5️⃣ **Runs `npm start` to launch the application**.

---

## 📦 **Docker Compose Explained**

- **MongoDB (`mongo`)**: Runs on version `7.0`, binds to `0.0.0.0`, and persists data.
- **Node.js App (`app`)**: Waits for MongoDB to be ready, runs `seed.js`, then starts the app.
- **Volumes**: Ensures MongoDB data persists even if containers stop.
- **Networks**: Allows the app to communicate with the database securely.

---

## 🔥 **Troubleshooting & Debugging**

- Check running containers:
  ```plaintext
  docker ps
  ```
- View logs for the app:
  ```plaintext
  docker logs app -f
  ```
- Connect to MongoDB container:
  ```plaintext
  docker exec -it mongo mongosh
  ```

---

## 🎯 **Conclusion**

This setup ensures **easy deployment, scalability, and efficient service management** using Docker. 🚀

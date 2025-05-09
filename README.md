# React.js Application with Docker and Jenkins Deployment

## Project Overview

This project is a React.js application that demonstrates how to set up a development environment using Docker and Docker Compose. The application is deployed on an AWS EC2 instance using Jenkins for Continuous Integration and Continuous Deployment (CI/CD).

## Technologies Used

- **React.js**: A JavaScript library for building user interfaces.
- **Docker**: A platform for developing, shipping, and running applications in containers.
- **Docker Compose**: A tool for defining and running multi-container Docker applications.
- **Jenkins**: An open-source automation server used to automate the deployment process.
- **AWS EC2**: A web service that provides resizable compute capacity in the cloud.

![aws react1](https://github.com/user-attachments/assets/fce03360-2c2c-458e-b50c-7cf9e3ff9e05)
![ip aws re1](https://github.com/user-attachments/assets/53920b88-1b25-4734-9c3f-4ffe5e28b82a)
![react js s1](https://github.com/user-attachments/assets/612a258d-63ed-4aab-84db-4a2a2cf811fa)
![j2](https://github.com/user-attachments/assets/abdc9cf3-d197-49bf-b190-30f98096930d)
![jenkins 1](https://github.com/user-attachments/assets/80ed1462-a229-4db5-9980-075641ef2928)


## Setup & Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/deepanshub9/reactjs-app.git
   cd reactjs-app
   ```

2. Build the Docker image:
   ```sh
   docker build -t reactjs-app .
   ```

3. Run the application using Docker Compose:
   ```sh
   docker-compose up
   ```

## Deployment Process

1. **Dockerize the Application**: The Dockerfile is used to create a Docker image for the React application. It includes all necessary dependencies and configurations.

2. **Docker Compose**: The `docker-compose.yml` file defines the services required to run the application. It simplifies the process of managing multiple containers.

3. **Jenkins CI/CD Pipeline**:
   - Jenkins is configured to monitor the Git repository for changes.
   - Upon detecting a change, Jenkins triggers a build process that includes:
     - Building the Docker image.
     - Deploying the Docker container to an AWS EC2 instance.

4. **Accessing the Application**: Once deployed, the application can be accessed via the public IP address of the EC2 instance.

## Future Enhancements

- Implement automated testing for the application.
- Add monitoring and logging for the deployed application.
- Explore using AWS services for scaling and load balancing.

## Contact

For any questions or support, please contact:

- **Deepanshu** - deepanshu.b096@gmail.com
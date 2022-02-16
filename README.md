# Tutorial: How to run Temporal on ECS

This tutorial will show you how to set up and run a Temporal cluster on ECS.

Here's an overview of the infrastructure we will set up:

## 1. The Docker images

We'll start with deploying 4 ECS services, which will run the 4 separate Temporal services. The reason we're running them separately instead of as one ECS service is so that they can automatically scale up and down, independently of each other. This means your Temporal service scales efficiently, adapting to the type of workload you give it.

-   BIND_ON_IP has to be set to the AWS current IP
-   Build them using GitHub Actions and push to ECR

## 2. The ECS services

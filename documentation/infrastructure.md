# Infrastructure

Application is deployed using AWS Services. The details of which are mentioned below.

## Database

For regular data storage we are using AWS RDS (Postgres).

## Backend API

Backend API is built using `Express` and `Node`. It is deployed on AWS Beanstalk. Node version is 14 and is kept up to date via Circle CI pipelines which trigger on every commit on `main` branch.

URL: [Backend Elastic Beanstalk URL](http://udagram-env.eba-3mer32kb.us-east-1.elasticbeanstalk.com)

## Frontend

The frontend of the app is made with help of `Angular`. It is deployed as a static site after compiling on AWS S3. Similar to the backend it also stays up to date with Circle CI pipelines.

URL: [Frontend AWS S3 URL](http://udagram-static.s3-website-us-east-1.amazonaws.com)

![Untitled Workspace](https://user-images.githubusercontent.com/11636916/165159984-acb842d4-78c5-4456-96e5-e13e41537b93.jpg)

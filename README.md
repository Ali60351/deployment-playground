# Udagram

This application is provided to you as an alternative starter project if you do not wish to host your own code done in the previous courses of this nanodegree. The udagram application is a fairly simple application that includes all the major components of a Full-Stack web application.

## Getting Started

1. Clone this repo locally into the location of your choice.
1. Move the content of the udagram folder at the root of the repository as this will become the main content of the project.
1. Open a terminal and navigate to the root of the repo
1. follow the instructions in the installation step

The project can run but is missing some information to connect to the database and storage service. These will be setup during the course of the project

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

```

### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres. <Place holder for link to classroom article>
1. In AWS, provision a s3 bucket for hosting the uploaded files. <Place holder for tlink to classroom article>
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd starter/udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd starter/udagram-frontend` to intall the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## Infrastructure

Application is deployed using AWS Services. The details of which are mentioned below.

### Database

For regular data storage we are using AWS RDS (Postgres).

### Backend API

Backend API is built using `Express` and `Node`. It is deployed on AWS Beanstalk. Node version is 14 and is kept up to date via Circle CI pipelines which trigger on every commit on `main` branch.

URL: [Backend Elastic Beanstalk URL](http://udagram-env.eba-3mer32kb.us-east-1.elasticbeanstalk.com)

### Frontend

The frontend of the app is made with help of `Angular`. It is deployed as a static site after compiling on AWS S3. Similar to the backend it also stays up to date with Circle CI pipelines.

URL: [Frontend AWS S3 URL](http://udagram-static.s3-website-us-east-1.amazonaws.com)
  
![Untitled Workspace](https://user-images.githubusercontent.com/11636916/165159984-acb842d4-78c5-4456-96e5-e13e41537b93.jpg)


## Pipeline

For this project the CI/CD pipeline is set via Circle CI. it relies on the `.circleci/config.yml` to read instructions.
The pipelines goes through the following flow in the following order.

- Install all dependencies for the frontend application. (via `npm run frontend:install`)
- Install all dependencies for the backend application. (via `npm run backend:install`)
- Run build command for the frontend application. (via `npm run frontend:build`)
- Run build command for the backend application. (via `npm run backend:build`)
- Run deploy command for the frontend application. (via `npm run frontend:deploy`)
  - Push the compiled build to S3 for static hosting
- Run deploy command for the backend application. (via `npm run backend:deploy`)
  - Push the compiled build to elastic beanstalk for API.

## License

[License](LICENSE.txt)

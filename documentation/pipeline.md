# Pipeline

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

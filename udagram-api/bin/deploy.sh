npm run clean
tsc
cp -rf src/config www/config
cp .npmrc www/.npmrc
cp package.json www/package.json
cp .env www/.env
cp -rf .elasticbeanstalk www/.elasticbeanstalk
cd www
eb deploy
deploy.sh         
#!/bin/bash

#Student1
docker-compose up -d


#Student2
docker login -u vennilavan -p token

docker tag test vennilavan/prod or dev

docker push vennilavan/prod or dev


#Student3
docker login -u username -p token

if [[ $GIT_BRANCH == "origin/dev" ]]; then

        docker tag test vennilavan/dev
        docker push vennilavan/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then

        docker tag test vennilavan/prod
        docker push vennilavan/prod

else
        echo "failed"
fi

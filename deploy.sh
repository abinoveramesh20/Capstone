#!/bin/bash

# Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Building project
    ./build.sh

    # Logging into Docker Hub 
    docker login -u abinoveramesh -p dckr_pat_q2pu9uYUcE1x6stfIHjlRL8Vsj0

  
    # Tagging the image
    docker tag capstoneimg abinoveramesh/dev

    # Push the image to the Dev Docker Hub repository
    docker push abinoveramesh/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Building project
    ./build.sh

    # Logging into Docker Hub
    docker login -u abinoveramesh -p dckr_pat_q2pu9uYUcE1x6stfIHjlRL8Vsj0

   
    # Tagging the image
    docker tag capstoneimg abinoveramesh/prod 

    # Push the image to the Prod Docker Hub repository
    docker push abinoveramesh/prod
else
    echo "Deployment error"
fi

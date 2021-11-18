#! /bin/bash

# rundir=/home/michael_crockatt/LBG-REST-API 
# build="docker build -t api-image ."

#install dependencies

npm install

# clone latest code
git pull origin main


#test

npm test

echo "node_modules" >> .dockerfile


#docker build

docker build -t api-image:{$BUILD_ID] .

# if pwd=echo"${rundir}" 

# echo "${build}"

# else

# cd echo"${rundir}" echo "${build}"

#-------------------------------------------------------------------------

gcloud config set account

docker tag api-image gcr.io/lbg-training/mikes-api:{$BUILD_ID}

docker push gcr.io/lbg-training/mikes-api:{$BUILD_ID}



exit



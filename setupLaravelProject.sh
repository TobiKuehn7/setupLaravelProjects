#!/bin/sh

# read git link
echo Paste the git link you want to clone:
read gitLink
echo ############################################

# read folder name to paste to
echo Name of the folder to clone to:
read folderName
echo ############################################

# read the project name
echo Name of the project \(tip: the name of the root folder in git project, if there is no root folder just pass .\):
read projectName
echo ############################################

# clone the repo
echo Cloning repo...
echo ############################################

# cloning repository user passed in
git clone $gitLink $folderName

echo ############################################
echo Repo cloned

# change into root folder
cd $folderName
cd $projectName
echo ############################################
pwd
echo ############################################

# setup laravel project
composer install
npm install
cp .env.example .env
echo ############################################


php artisan key:generate

# tips for usage
echo ############################################
echo create databases and run migrations

# serve dev page
echo open localhost:8000 in your browser
echo ############################################
php artisan serve

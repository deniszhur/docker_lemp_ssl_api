# Overview
A docker-compose file to spin up the containers necessary for running a wordpress instance with SSL / MySQL / Nginx quickly
Contains a local docker-compose

## Recommended wp plugins 
- Better-Search-Replace (when you push your local database to your live domain - replace domain name in DB)
- Redis-Cache (container commented out in docker-compose)

The docker-compose should spin up a working wordpress site with SSL. more generic.

## Setup Overview
- Create data directory ./mysql_database/mysql for data files
- Assuming you have a domain name and server already setup. Edit and rename sample.env to .env and add your domain and credentials for wordpress and mysql
- You can increase the upload max file size in wordpress media in /wordpress/wp-content/uploads/uploads.ini (edit before running the container)
- Make ./init-letsencrypt.sh executable and then run it:
```$ chmod +x init-letsencrypt.sh```

```$ sudo ./init-letsencrypt.sh```

- You might need to restart docker containers for the previous step to work
```$ docker-compose down```

```$ docker-compose up (might need --build --force-recreate)```

- Your site should spin up  Go to yourdomain.com/wp-admin and install wordpress as usual
- Optional - enable my wordpress plugin (caudurodev) to turn on Redis WP GraphQL query caching - you specify if you want the query cached via a unique string in the request header...
- You might need to change permissions in the wordpress/wp-content/ folder to be able to upload files, edit plugins and themes


## Local Development
This will use slightly different configurations. You will need a /mysql_database folder in the same dir as your docker-compose to store your DB files
```$ docker-compose -f docker-compose-dev.yml up```

# more info
Set up your digital ocean server with git hooks to deploy your site:
https://cauduro.dev/post/setting-up-a-server-with-git-hooks-to-deploy-and-docker-for-your-projects

 


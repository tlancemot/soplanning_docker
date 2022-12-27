![SoPlanniong](https://www.soplanning.org/wp-content/uploads/2017/05/logo-soplanning.png)

SOPlanning is an online planning tool designed to efficiently organize projects and tasks. 

# Using this image 

## Usage
```
    docker run -p 8080:80 \
    -e DB_HOSTNAME=127.0.0.1 \ 
    -e DB_USERNAME=soplanning \
    -e DB_PASSWORD=password \
    -e DB_NAME=soplanning_db \
    tlancemot/soplanning:<version>
```

## Environment Variables

* DB_HOSTNAME: Hostname / IP of  MySQL DB Server
* DB_USERNAME: MySQL Soplanning User
* DB_PASSWORD: MySQL Soplanning Password
* DB_NAME: MySQL DB name

## Exposed port
* HTTP 80 (default php-apache port)


## docker-compose

soon

## Kubernetes / Helm 

soon


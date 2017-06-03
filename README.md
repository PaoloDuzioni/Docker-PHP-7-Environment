# Docker PHP 7 Environment

This Docker create a PHP 7 environment with the following middleware:

 - PHP 7.0
 - MariaDB MySql latest engine

## Configuration
To configure Docker for setting up a PHP 7 Development environment you need to:

- Add the Dockerfile in the document root of your project.
- Add the database folder in the document root of your project with the Database dump in it.
- Change the .env file with the main website constants.  
**N.B** The database container will create automatically a database and a user with the settings specify in the .env file and it will import automatically (if provided) the dump you add in the database folder.
- Add the docker-compose.yml file to the document root of your project.

## Build your container and start the server
To make everything up & running, execute the commands:

- `docker-compose buil`
- `docker-compose u`

Once all is ready:

**Website** is reachable at [http://localhost:8080/](http://localhost:8080/)

**PHPMyAdmin** is reachable at [http://localhost:8081/](http://localhost:8081/)


## Docker useful commands

- show running containers: `docker ps`
- show all containers (running and non running): `docker ps -a`
- stop a running container: `docker stop container_name1 [container_name2]`
- remove a non running container: `docker rm container_name1 [container_name2]`

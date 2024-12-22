# SAMPLE DATABASE 📜

Welcome to SampleDatabase! Here you'll find a database to test, learn and to practice SQL commands.

## Running Container

You can execute the following command on the root git folder project to run a docker container with postgres:

```
$> docker compose up -d
```

To kill the containers running, you can execute:

```
$> docker compose down
```

## Creating Database

You can connect to the local postgres server running in Docker container with any administration of database tool compatible with Postgres or command line.

With the contaioner running, execute the command in file sql/databases/CREATE DATABASE sample_docker.sql to create the database of sample.
After that, connect in the database sample_docker and run the SQL commands in sql/CREATE TABLE consolidated.sql.
Finally, execute the commands in sql/INSERT consolidated.sql to insert some base tables used in example.

# Contact

Jonatas Harbas (jharbax) - jharbax@gmail.com

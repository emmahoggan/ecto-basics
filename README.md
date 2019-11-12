# ecto-basics
The purpose of this project is to illustrate the basics of using Ecto in an Elixir project, using the example of a backend/database for a library catalog.

## Prerequisites
Before starting you'll need postgres up and running using port 5432.  If you already have postgres up, you may need to edit the connection details in `library_catalog/config/config.exs`. 

To start up a Postgres Docker container that exposes port 5432, you can use the following commands (once you have docker running). The first command to pull the postgres image is only needed if you haven't previously done so.
```
$ docker pull postgres
$ docker run --rm --name library_catalog -e POSTGRES_PASSWORD=ectoexample -d -p 5432:5432 postgres
```

## Setup

To run the project, clone the repo and then from within the `library_catalog/` folder, run the following commands:

```
$ mix deps.get
$ mix ecto.create
$ mix ecto.migrate
```

## Exercises

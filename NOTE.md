# Steps

## 1. Set the Environmental variables in .env

## 2. Start a postgres instance, In this case, a local one with docker
```
docker run -it -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword postgres
```

## 3. initialize alembic from the base directory (the one this file is in). Delete the alembic.ini file and app/alembic folder if they already exist.
```
alembic init app/alembic
```

## 4. Add your Database URL to the alembic.ini - sqlalchemy.url

## 5. Build the docker image and tag it
```
docker build -t <container_name> .

docker tag <container_name> <container_name>
```

## 6. Run the container
```
docker run -d -p 8000:8000 --env-file .env <container_name>
```

## 7. Push to Docker registry
```

```

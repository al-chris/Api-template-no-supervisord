# Steps

## 1. Set the Environmental variables in .env


## 2. initialize alembic from the base directory (the one this file is in). Delete the alembic.ini file and app/alembic folder if they already exist.
```
alembic init app/alembic
```

## 3. Add your Database URL to the alembic.ini - sqlalchemy.url

## 4. Build the docker image and tag it
```
docker build -t <container_name> .

docker tag <container_name> <container_name>
```

## 5. Run the container
```
docker run -d -p 8000:8000 --env-file .env <container_name>
```

## 6. Push to Docker registry
```

```

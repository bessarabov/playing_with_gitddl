

## build

    docker build --tag gitddl .

## update

    time docker run \
        --rm \
        -it \
        --volume `pwd`:/app \
        gitddl \
        sh -c 'cd /app; rm -rf cpanfile.snapshot local; carton install'


## working

start:
    docker-compose up -d

work:
    docker exec -it playwithgitddl_app_1 bash
    mysql --host db -psecret
    carton exec ./a.pl

stop:
    docker-compose stop; docker-compose rm -f

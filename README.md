# playing_with_gitddl

Just a simple repo with several experiments with Perl library
[GitDDL](https://metacpan.org/pod/GitDDL) and its extended version
[GitDDL::Migrator](https://metacpan.org/pod/GitDDL::Migrator).

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
    docker exec -it playingwithgitddl_app_1
    mysql --host db -psecret
    carton exec ./a.pl

stop:
    docker-compose stop; docker-compose rm -f

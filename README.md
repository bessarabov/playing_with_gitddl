# playing_with_gitddl

Just a simple repo with several experiments with Perl library
[GitDDL](https://metacpan.org/pod/GitDDL) and its extended version
[GitDDL::Migrator](https://metacpan.org/pod/GitDDL::Migrator).

## Build

    docker build --tag gitddl .

## Work

start:

    docker-compose up -d

work:

    docker exec -it playingwithgitddl_app_1
    mysql --host db -psecret
    carton exec bin/diff.pl

stop:

    docker-compose stop; docker-compose rm -f

## Update cpanfile.snapshot

You should update only one file `cpanfile`. The file `cpanfile.snapshot` is
stored in the repo, but it should be generated automaticly with the command:

    time docker run \
        --rm \
        -it \
        --volume `pwd`:/app \
        gitddl \
        sh -c 'cd /app; rm -rf cpanfile.snapshot local; carton install'

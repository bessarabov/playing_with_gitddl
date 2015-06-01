#!/usr/bin/perl

=encoding UTF-8
=cut

=head1 DESCRIPTION

=cut

# common modules
use strict;
use warnings FATAL => 'all';
use feature 'say';
use utf8;
use open qw(:std :utf8);

use Carp;

use lib::abs qw(
    ../lib
);
use GitDDL;

# global vars

# subs

# main
sub main {

    my $database = 'aaa';
    my $host = 'db';
    my $port = '3306';

    my $gd = GitDDL->new(
        work_tree => '/app', # git working directory
        ddl_file  => 'sql/structure.sql',
        dsn       => [
            "DBI:mysql:database=$database;host=$host;port=$port",
            'root',
            'secret',
        ],
    );

    $gd->deploy;

    say '#END';
}
main();
__END__

#!perl

use ExtUtils::MakeMaker;

$script = "perlpatch2svn";

WriteMakefile(
    NAME	    => "CPAN::$script",
    VERSION_FROM    => $script,
    EXE_FILES	    => [ $script ],
);

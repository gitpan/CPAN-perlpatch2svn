#!perl

# For now, tests only that perlpatch2svn compiles correctly

BEGIN {
    *CORE::GLOBAL::unlink = sub (@) {};
}

print "1..1\n";

open F, 'perlpatch2svn'
    or die "Can't read perlpatch2svn: $!\n";
$prog = "sub {\n";
while (<F>) {
    next if /^__END__/;
    $prog .= $_;
}
$prog .= "}";
close F;
eval $prog;
if ($@) {
    print "not ok 1 - compiles\n";
} else {
    print "ok 1 - compiles\n";
}

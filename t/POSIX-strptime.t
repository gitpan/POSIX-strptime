# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl POSIX-strptime.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More;
plan tests => 2;
use_ok('POSIX::strptime');

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my @exp = qw(34 32 10 4 1 105 5 34);

my @ret = POSIX::strptime("2005-02-04 10:32:34 UTC", "%F %T %Z");

ok eq_array(\@ret, \@exp);

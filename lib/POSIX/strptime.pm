package POSIX::strptime;

use 5.000;
use strict;

use XSLoader;
use vars qw($VERSION @ISA @EXPORT_OK);

$VERSION = '0.07';

require Exporter;
@ISA = qw(Exporter);

XSLoader::load 'POSIX::strptime', $VERSION;

# Preloaded methods go here.

1;
__END__

=head1 NAME

POSIX::strptime - Perl extension to the POSIX date parsing strptime(3) function

=head1 SYNOPSIS

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday) = POSIX::strptime("string", "Format");

=head1 DESCRIPTION

Perl interface to strptime(3)

=head1 METHODS

=over 4

=item strptime

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday) = POSIX::strptime(string, format);

Returns undef for any value not successfully extracted

=back

=head1 SEE ALSO

strptime(3)

=head1 AUTHOR

Philippe M. Chiasson E<lt>gozer@cpan.orgE<gt>
Kim Scheibel E<lt>kim@scheibel.co.ukE<gt>

=head1 REPOSITORY

http://svn.ectoplasm.org/projects/perl/POSIX-strptime/trunk/

=head1 COPYRIGHT

Copyright 2005 by Philippe M. Chiasson E<lt>gozer@cpan.orgE<gt>.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

See F<http://www.perl.com/perl/misc/Artistic.html>


=cut

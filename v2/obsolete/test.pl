#!/opt/perl_5.18.2/bin/perl

BEGIN {
    push ( @INC,"./generated_files/");
    push ( @INC,"./perl/");
}
use Data::Dumper;
use SimpleDS;
use Scalar::Util qw(reftype);

my $p = "\n[PERL CODE]:\t";

print $p,"perl code started here";
print $p," ==============================";
print $p," ==============================";
print $p," ============================== testing ref";
my ($x, $y, $z);
$x = 1;
$y = \$x;
$z = \$y;
print $p, "ref(x) = ", ref( $x) ;
print $p, "type(z) = ", type( $z) ;  
print $p, "ref(z) = ", ref( $z) ; 
print $p," ==============================";
print $p," perl code ended here\n\n";







exit;
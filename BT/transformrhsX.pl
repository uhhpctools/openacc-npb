#!/usr/local/bin/perl -w

use strict;

my $dir = shift || die "Need the src directory to transform. ";

unless (-e $dir) {
    print "ERROR: $dir does not exist.\n";
    exit;
}

my @files = <$dir/x_solve.c>;

foreach my $f (@files) {
    
    unless ($f =~ /\.c\Z/ || $f =~ /\.h\Z/) {
	next;
    }

    print "Starting $f\n";

    open (IN, "< $f") || die "Unable to open input file $f";
    open (OUT, "> $f.new") || die "Unable to open outptut file $f.new";
    
    while (<IN>) {
	my $line = $_;

	
	# $1 == m dimension
        # $2 == k
        # $3 == j
	# $4 == i
	# rename rhs to rhsX and swap the index

	$line =~ s/rhs\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/rhsX\[$1\][$2\]\[$4\]\[$3\]/g;
								      
	print OUT $line;
    }

    close IN;
    close OUT;
    system("mv $f.new $f");

}



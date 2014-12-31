#!/usr/local/bin/perl -w

use strict;

my $srcdir = shift || die "Need the src directory to transform. ";
my $destdir = shift || die "Need the dest directory. ";

unless (-e $srcdir) {
    print "ERROR: $srcdir does not exist.\n";
    exit;
}
unless (-e $destdir) {
    mkdir $destdir || die "Unable to create destination directory $destdir";
}

die "srcdir and destdir must be different." if ($srcdir eq $destdir);

my @files = <$srcdir/*>;

foreach my $f (@files) {
    
    unless ($f =~ /\.c\Z/ || $f =~ /\.h\Z/) {
	next;
    }
    
    $f =~ /$srcdir\/(.*)/;
    my $fname = $1;

    print "Starting $f to $destdir/$fname\n";

    open (IN, "< $f") || die "Unable to open input file $f";
    open (OUT, "> $destdir/$fname") || die "Unable to open outptut file $destdir/$fname";
    
    while (<IN>) {
	my $line = $_;
	
	# Remove any spaces
	$line =~ s/rhs\s+\[/rhs\[/g;
	$line =~ s/u\s+\[/u\[/g;
	$line =~ s/forcing\s+\[/forcing\[/g;

	# $1 == k dimension
        # $2 == j
        # $3 == i
	# $4 == m
	
	$line =~ s/rhs\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/rhs\[$4\][$1\]\[$2\]\[$3\]/g;
	$line =~ s/u\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/u\[$4\][$1\]\[$2\]\[$3\]/g;
	$line =~ s/forcing\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/forcing\[$4\][$1\]\[$2\]\[$3\]/g;
								      
	print OUT $line;
    }

    close IN;
    close OUT;
}



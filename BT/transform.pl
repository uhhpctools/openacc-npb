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
	$line =~ s/fjacX\s+/fjacX/g;
	$line =~ s/njacX\s+/njacX/g;
	$line =~ s/lhsX\s+/lhsX/g;
	$line =~ s/lhsY\s+/lhsY/g;
	$line =~ s/lhspY\s+/lhspY/g;
	$line =~ s/lhsmY\s+/lhsmY/g;
	$line =~ s/lhsZ\s+/lhsZ/g;
	$line =~ s/lhspZ\s+/lhspZ/g;
	$line =~ s/lhsmZ\s+/lhsmZ/g;
	#$line =~ s/u\s+/u/g;
	#$line =~ s/forcing\s+/forcing/g;
	#$line =~ s/rhs\s+/rhs/g;

	$line =~ s/fjacX\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/fjacX\[$4\][$5\]\[$1\]\[$2\]\[$3\]/g;
	$line =~ s/njacX\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/njacX\[$4\][$5\]\[$1\]\[$2\]\[$3\]/g;
	$line =~ s/lhsX\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/lhsX\[$3\]\[$4\][$5\]\[$6\]\[$1\]\[$2\]/g;

	$line =~ s/fjacY\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/fjacY\[$4\][$5\]\[$1\]\[$2\]\[$3\]/g;
	$line =~ s/njacY\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/njacY\[$4\][$5\]\[$1\]\[$2\]\[$3\]/g;
	$line =~ s/lhsY\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/lhsY\[$3\]\[$4\][$5\]\[$6\]\[$1\]\[$2\]/g;

	$line =~ s/fjacZ\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/fjacZ\[$4\][$5\]\[$1\]\[$2\]\[$3\]/g;
	$line =~ s/njacZ\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/njacZ\[$4\][$5\]\[$1\]\[$2\]\[$3\]/g;
	$line =~ s/lhsZ\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/lhsZ\[$3\]\[$4\][$5\]\[$6\]\[$1\]\[$2\]/g;

	#$line =~ s/rhs\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/rhs\[$4\][$3\]\[$2\]\[$1\]/g;
	#$line =~ s/u\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/u\[$4\][$3\]\[$2\]\[$1\]/g;
	#$line =~ s/forcing\[(.*?)\]\[(.*?)\]\[(.*?)\]\[(.*?)\]/forcing\[$4\][$3\]\[$2\]\[$1\]/g;
				          
	print OUT $line;
    }

    close IN;
    close OUT;
}



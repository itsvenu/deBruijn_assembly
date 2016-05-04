#!/usr/bin/perl -w

use strict;
use warnings;

unless($#ARGV==0){
	print "USAGE: perl debruijn.pl <kmer_file.txt>\n";
	exit;
}


open my $in, '<', $ARGV[0] or die $!;
chomp(my @short_reads = <$in>);

my $first_read = $short_reads[0];
my @all_end_res;

for(my $i=0; $i<=$#short_reads; $i++){
	chomp $short_reads[$i];
	my $end_of_kmers = substr($short_reads[$i], -6);
	my $next_read = $short_reads[$i+1];
	
	if((defined $next_read) and ($next_read =~ /^\Q$end_of_kmers/)){
		my $end_res = substr($next_read, -1);
		push(@all_end_res, $end_res);

	}

}

my $end_res2 = join('',@all_end_res);
print $first_read.$end_res2,"\n";

##END 

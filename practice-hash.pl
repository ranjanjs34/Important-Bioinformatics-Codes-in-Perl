#!/usr/bin/perl
use strict;
use warnings;
my %seq=('dna'=>'ATGCTG', 'rna'=>'AUGC');
print"Value of dna is: ";
print $seq{'dna'};
print"\n";

foreach my $key(keys %seq){
	print"$key=>$seq{$key}\n";
	}
 print"\n\nIMPORTANT NOTES: Don't be confused. (keys %seq) here,\nkeys will transfer the key name to MY DOLLER KEY  variable.\nIf we want to print the name of the key, \nthe simply put DOLLER KEY and if you want to \nprint the value of the key , simply put DOLLER SEQ{DOLLER KEY} in side the print statement.\n\n";
 exit; 
 

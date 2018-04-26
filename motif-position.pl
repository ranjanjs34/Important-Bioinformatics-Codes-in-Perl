#!usr/bin/perl
use strict;
use warnings;
star:
print"Message::: Do you want to cintinue with this program?? if Yes Press 1 and hit ENTER otherwise press Zero and hit enter \n\n";
$a=<>;
chomp($a);
if($a==0)
	{ exit;}
	else{
		if($a==1)
		{
print"\n**********************Motif Position analysis**********************\n\n";
print"Enter the DNA sequence:\n\n";

my$input_seq=<stdin>;

chomp($input_seq);

print"\n\nEnter the motif that you want to know it's position in the sequence:\n\n\n";

my$motif=<stdin>;

chomp($motif);

print"\n\n";

my$offset=0;

$input_seq=~s/\n//ig;

$input_seq=~s/\s//ig;

my$result=index($input_seq,$motif,$offset);

open FH, ">>test_B_result.txt";

while($result != -1)
	{
		$result++;
		
		print FH"$result  ";
		
		$offset=$result+1;
		
		$result=index($input_seq,$motif,$offset);
	}
	print FH "\n";
	close FH;

goto star;

}
}

#!/usr/bin/perl
use strict;
use warnings;

my $FAQ = $ARGV[0];
my $OTF = $ARGV[1];

open ( OUT , "> ${OTF}" );
close( OUT );

open (my $FQ1, "<", ${FAQ}) or die "$!";

while(my $FL1 = readline $FQ1)
{
	$FL1       =~ s/\n//;
	if($FL1 =~ "^\@NS")
	{
	my @FLS   =  split("\:",$FL1);
	my $FLS_0   =  $FLS[0];
	my $FLS_1   =  $FLS[1];
	my $FLS_2   =  $FLS[2];
	my $FLS_3   =  $FLS[3];
	my $FLS_4   =  $FLS[4];
	my $FLS_5   =  $FLS[5];
	my $FLS_6   =  $FLS[6];
	my $FLS_7   =  $FLS[7];
	my $FLS_8   =  $FLS[8];
	my $FLS_9   =  $FLS[9];
	open ( OUT , ">> ${OTF}" );
	print OUT "$FLS_0:$FLS_1:$FLS_2:$FLS_3:$FLS_3$FLS_3$FLS_3$FLS_4:$FLS_3$FLS_3$FLS_3$FLS_5:$FLS_3$FLS_3$FLS_3$FLS_6:$FLS_7:$FLS_8:$FLS_9\n";
	close( OUT );
	}else{
	open ( OUT , ">> ${OTF}" );
	print OUT "$FL1\n";
	close( OUT );
	}
}
close $FQ1;
exit;

#!/usr/bin/perl
use POSIX qw(strftime);

sub PrintFormatedPerson
{
	$age = 33;
	$name = "John Murad";
	$salary = 69999.69;
	# print out salary
	printf "Name: %s, Age: %s, Salary: %6.2f\n", $name,$age,$salary;
}

#Print current date time
sub PrintDateTime
{
	$datestring = strftime "%m_%d_%Y_%H:%M:%S", localtime;
	print "Local date and time: $datestring\n";
}

sub PrintTimeDiff
{
	# Get time differnece
	my $start = time();
	$sleepTime = 1;
	printf "Sleeping for %d seconds...\n", $sleepTime;
	sleep $sleepTime;
	my $end = time();
	my $Diff = $end - $start;

	print "Start ".$start."\n";
	print "End ".$end."\n";
	print "Diff ".$Diff."\n";
}

#function to calculate average
sub Average
{
	#get total number of args passed
	$numberOfArgs = scalar(@_);
	$sum = 0;

	foreach $item (@_)
	{
		$sum += $item;
	}
	$average = $sum / $numberOfArgs;

	return $average;
}

sub TestArrays
{
	$john[0] = "yabba";
	$john[1] = "dabba";
	$john[2] = "doooo";

	for ($index = 0; $index <= $#john; $index++)
	{
		print "Index: " .$index ." Str: " .$john[$index] ."\n";
	}
}

PrintFormatedPerson();
PrintDateTime();
PrintTimeDiff();
printf "Average (10, 20, 30, 40) = %6.2f\n", Average(10, 20, 30, 40);
TestArrays();

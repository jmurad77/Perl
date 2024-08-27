#!/usr/bin/perl
@lines = `perl -v`;
foreach (@lines)
{
	s/\w<([^>]+)>/\U$1/g;
	print;
}

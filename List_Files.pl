#!/usr/bin/perl
use strict;
use warnings;

# NAME: List_Files.pl 
# DESIGNER: POLARIS HENDRIX
# USE: PRINTS RECURSIVE LIST OF DIRECTORY FILES
# EXECUTE: perl List_Files.pl
# DATE: 01/16/2022

# -f CHECKS IF FILE
# -d CHECKS IF DIRECTORY

# FOR SUB DIRECTORIES USES name\* format IN THE GLOB; EX my $dir = 'mysource\\*';

my $dir = "*"; # SET INITIAL DIRECTORY TO CURRENT DIRECTORY

getfiles();

sub getfiles {
   my @files = glob( $dir );
   foreach $a (@files) {
      if ( -f $a ) {  
         print $a . "\n";
      } else {
	 $dir = $a . '\\*';
         getfiles();
      }
   }
}

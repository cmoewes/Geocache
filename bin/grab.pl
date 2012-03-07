#!/usr/bin/perl

my $url = 'http://www.falstad.com/geocaches/patience2/images.pl/pic.jpg';

use LWP::Simple;

my $data = get($url);

use IO::File;

my $file = IO::File->new('output.jpg', 'w');
$file->binmode;
$file->print($data);
$file->close;


my $diff = `diff output.jpg current.jpg`;

if($diff =~ m/Binary files output\.jpg and current\.jpg differ/){
    my $file_name = time;
    $file_name .= '.jpg';
    `mv output.jpg $file_name`;
    `rm current.jpg`;
    `ln -s $file_name current.jpg`;

}


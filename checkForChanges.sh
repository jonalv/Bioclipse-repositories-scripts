ls -d bioclipse.* | perl -MTerm::ANSIColor=:constants -Mstrict -wne ' 
    binmode STDOUT, ":utf8";
    chomp;
    my $output=`cd $_; git --no-pager log v2.4.0..2.4.x 2>&1`; 
    if ($output=~/commit/) {
        print YELLOW chr(0x26a0), " ", uc($_),"has changed";
    }
    elsif ($output=~/fatal/) {
        print RED chr(0x2573), " ", uc($_), "gave error:\n", RESET (join "\n", map { "\t$_"} split "\n", $output);
    }
    elsif ($output eq "") {
        print GREEN chr(0x2713), " ", uc($_), "has not changed";
    }
    print RESET "\n"; 
'

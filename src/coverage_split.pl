use POSIX;
while (<>) {
    chomp;
    split(/\t/);
    $chr   = @_[0];
    $start = 1;
    $stop  = @_[1];
    ### make 100 splits
    $factor = ceil( $stop / 100 );
    for ( $i = 1; $i < $stop; ) {
        $j = $i + $factor;
        if ( $j > $stop ) { $j = $stop; }
        print "$chr\t$i\t$j\n";
        $i = $j;
    }
}


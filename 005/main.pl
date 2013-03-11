#!/usr/bin/env perl

sub sm {
    my $min = 2;
    my $n = $min;

    foreach my $i ($min..$_[0]) {
        if ($n % $i != 0) {
            $n *= $i;
        }
    }

    foreach my $i ($min..$_[0]) {
        my $c = $min-1;
        foreach my $k ($min..$_[0]) {
            if (($n/$i) % $k == 0) {
                $c++;
            }
        }

        if ($c == $_[0]) {
            $n /= $i;
        }
    }

    return $n;
}

print sm(20);

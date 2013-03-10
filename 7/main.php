#!/usr/bin/env php
<?php

    function is_prime($n) {
        $d = 2;
        $sqrt = sqrt($n);

        for (; $d <= $sqrt; $d += 1) {
            if ($n % $d == 0) {
                return false;
            }
        }

        return true;
    }

    function nth_prime($n) {
        $pc = 1;
        $i = 2;

        for (;;$i++) {
            if (is_prime($i)) {
                if ($pc == $n) {
                    return $i;
                }

                $pc += 1;
            }
        }

        return $i;
    }

    $result = nth_prime(10001);
    print "{$result}\n";

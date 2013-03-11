#!/bin/bash

lps() {
    local num=$1
    local digits=$2
    local largest=0
    local len=${#num}

    for ((i=1; $i+$digits <= $len; i+=1)); do
        local n=1
        local d=${num:i:digits}

        for ((j=0; $j < $digits; j+=1)); do
            local f=${d:$j:1}

            if [ "$f" == 0 ]; then
                break
            fi

            n=$(($n * $f))
        done

        if [ "$n" -gt "$largest" ]; then
            largest=$n
        fi
    done

    echo $largest
}

num=$(tr -d '\n' < num.txt)
digits=5

result=$(lps $num $digits)
echo $result

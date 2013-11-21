package main

import (
    "math"
	"fmt"
    "sort"
)

func divisorCalculator() func(num int) []int {
    cache := map[int][]int{
        1: []int{1},
    }

    mapToSlice := func(m map[int]bool) []int {
        mk := make([]int, len(m))
        i := 0
        for k, _ := range m {
            mk[i] = k
            i++
        }
        sort.Ints(mk)
        return mk
    }

    var div func(num int) []int
    div = func(num int) []int {
        fmt.Println(num)
        if result, ok := cache[num]; ok {
            return result
        }

        n := float64(num)
        factors :=  map[int]bool{}
        for i := float64(1); i <= math.Sqrt(n); i++ {
            t := n / i
            if t == float64(int(t)) {
                // TODO: merge cached values
                //for d := range div(int(i)) {
                    //factors[d] = true
                //}
                factors[int(i)] = true
                factors[int(t)] = true
            }
        }
        cache[num] = mapToSlice(factors)
        return cache[num]
    }
    return div
}

func triangleCalculator() func(n int) int{
    cache := map[int]int{
        0: 0,
    }

    var triangle func(int) int
    triangle = func(n int) int {
        if result, ok := cache[n]; ok {
            return result
        }

        cache[n] = n + triangle(n-1)
        return cache[n]
    }
    return triangle
}

func main() {
    //triangle := triangleCalculator()
    div := divisorCalculator()
    //var count int
//
    //for i := 1; count <= 500; i++ {
        //result := triangle(i)
        //count = len(div(result))
//
        //fmt.Println(fmt.Sprintf("%6d -> %10d: [%3d]", i, result, count))
    //}

    divisors := div(20)
    fmt.Println(divisors)
}

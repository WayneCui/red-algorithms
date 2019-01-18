Red [
    Title: "binary searching"
    File: %binary-search.red
    Author: "WayneCui"
    Date: "2019-01-18"
    Purpose: {binary searching for an integer in a sorted block of integers. 
        See: https://algs4.cs.princeton.edu/11model/BinarySearch.java.html}
    Version: 0.0.1
]

binary-search: function [a [series!] key [integer!]][
    low: 1
    high: (length? a)

    while [ low <= high ] [
        mid: (low + high) >>> 1
        ; mid: (high - low) / 2 + low
        mid-val: a/(mid)

        case [
            mid-val < key [ low: mid + 1]
            mid-val > key [ high: mid - 1]
            mid-val = key [ return mid ] ; key found
        ]
    ]

    negate (low) ; key not found. Also as -(insertion point), following java: Collections#binarySearch
]


main: function [][
    blk: [1 3 5 7 9]
    print binary-search blk 1
    print binary-search blk 2
    print binary-search blk 3
    print binary-search blk 4
    print binary-search blk 5
    print binary-search blk 6
    print binary-search blk 7
    print binary-search blk 8
    print binary-search blk 9
    print binary-search blk 10
]

main
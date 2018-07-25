Here is the chart I made for the benchmark.

![Chart](https://i.imgur.com/k08YkQJ.png)

Here is the benchmark output:

```
Rehearsal -------------------------------------------
quick:    0.000140   0.000021   0.000161 (  0.000160)
bucket:   0.000044   0.000007   0.000051 (  0.000050)
heap:     0.000386   0.000060   0.000446 (  0.000447)
---------------------------------- total: 0.000658sec

              user     system      total        real
quick:    0.000170   0.000000   0.000170 (  0.000168)
bucket:   0.000055   0.000000   0.000055 (  0.000053)
heap:     0.000452   0.000000   0.000452 (  0.000452)
```

I was most surprised by bucket sort! I thought that was going to be at least slower than quick sort because it **uses** quick sort, but it turned out to be faster! My hypothesis is that because the collection itself was broken down into smaller pieces, or "buckets," the job became more efficient for quick sort since it is working with smaller collections. And somehow that made the overall job much more efficient.

I'm not surprised by heap sort since it has to build the heap which automatically sorts itself on every insertion. Also, I suspect my implementation of the minimum binary heap is not that efficient in the first place!

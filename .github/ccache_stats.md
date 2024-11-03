| Configuration          | Real Time | User Time | System Time | Cacheable     | Uncacheable   | Hits          | Direct        | Preprocessed | Misses      |
| No Caching             | 13:14     | 160:33    | 12:51       | N/A           | N/A           | N/A           | N/A           | N/A          | N/A         |
| Default CCache         | 4:49      | 27:52     | 5:17        | 8562 (61.90%) | 5270 (38.10%) | 8558 (99.95%) | 8328 (97.31%) | 230 (2.69%)  | 4 (0.05%)   |
| Direct w/ Depend       | 5:07      | 37:01     | 5:43        | 8562 (61.90%) | 5270 (38.10%) | 8334 (97.43%) | 8328 (99.93%) | 6 (0.07%)    | 228 (2.66%) |
| Direct w/ Depend       | 5:06      | 36:51     | 5:49        | 8562 (61.90%) | 5270 (38.10%) | 8344 (97.43%) | 8338 (99.93%) | 6 (0.07%)    | 218 (2.55%) |
| No Direct              | 5:21      | 37:57     | 8:16        | 8562 (61.90%) | 5270 (38.10%) | 8558 (99.95%) | N/A           | 8558 (100%)  | 4 (0.05%)   |
| No Direct w/ Depend    | 12:51     | 153:31    | 12:58       | 8562 (61.90%) | 5270 (38.10%) | 5405 (36.87%) | N/A           | 5405 (100%)  | 3157 (36.87)|


Cache Building Time
| Configuration          | Real Time | User Time | System Time | Cache Size | Cache Hits |
| No Caching             | 13:14     | 160:33    | 12:51       |            |            |
| Default                | 14:23     | 176:15    | 16:49       | 1GB        | 4.89%      |
| Direct w/ Depend       | 13:44     | 164:24    | 13:58       | 0.99GB     | 4.60%      |
| No Direct              | 14:11     | 170:26    | 15:44       | 0.95GB     | 4.88%      |

real    14m11.070s
user    170m26.349s
sys     15m44.137s
Cache directory:                  /root/.cache/ccache
Config file:                      /root/.config/ccache/ccache.conf
System config file:               /etc/ccache.conf
Stats updated:                    Sun Nov  3 21:35:03 2024
Cacheable calls:                  8562 / 13832 (61.90%)
  Hits:                            418 /  8562 ( 4.88%)
    Direct:                          0 /   418 ( 0.00%)
    Preprocessed:                  418 /   418 (100.0%)
  Misses:                         8144 /  8562 (95.12%)
Uncacheable calls:                5270 / 13832 (38.10%)
  Autoconf compile/link:          2687 /  5270 (50.99%)
  Bad compiler arguments:          167 /  5270 ( 3.17%)
  Called for linking:              226 /  5270 ( 4.29%)
  Called for preprocessing:       1029 /  5270 (19.53%)
  Compilation failed:              411 /  5270 ( 7.80%)
  Compiler output file missing:      2 /  5270 ( 0.04%)
  Compiler produced empty output:    1 /  5270 ( 0.02%)
  No input file:                   565 /  5270 (10.72%)
  Preprocessing failed:            170 /  5270 ( 3.23%)
  Unsupported source language:      12 /  5270 ( 0.23%)
Successful lookups:
  Direct:                            0
  Preprocessed:                    418 /  8976 ( 4.66%)
Local storage:
  Cache size (GB):                0.95 /  5.00 (18.95%)
  Files:                          8123
  Hits:                            418 /  8976 ( 4.66%)
  Misses:                         8558 /  8976 (95.34%)
  Reads:                          8976
  Writes:                         8144
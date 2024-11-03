| Configuration          | Real Time | User Time | System Time | Cacheable     | Uncacheable   | Hits          | Direct        | Preprocessed | Misses     |
| No Caching             | 13:14     | 160:33    | 12:51       | N/A           | N/A           | N/A           | N/A           | N/A          | N/A        |
| Default CCache         | 4:49      | 27:52     | 5:17        | 8562 (61.90%) | 5270 (38.10%) | 8558 (99.95%) | 8328 (97.31%) | 230 (2.69%)  | 4 (0.05%)  |
| Dirct w/ Depend mode   | 4:07      | 37:01     | 5:43        | 8562 (61.90%) | 5270 (38.10%) | 8334 (97.43%) | 8328 (99.93%) | 6 (0.07%)    | 228 (2.66%)|
| No Direct Mode         | 5:21      | 37:57     | 8:16        | 8562 (61.90%) | 5270 (38.10%) | 8558 (99.95%) | N/A           | 8558 (100%)  | 4 (0.05%)  |
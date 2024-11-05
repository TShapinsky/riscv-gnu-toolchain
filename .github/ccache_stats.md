| Configuration          | Real Time | User Time | System Time | Cacheable     | Uncacheable   | Hits          | Direct        | Preprocessed | Misses       |
| No Caching             | 13:14     | 160:33    | 12:51       | N/A           | N/A           | N/A           | N/A           | N/A          | N/A          |
| Default CCache         | 4:49      | 27:52     | 5:17        | 8562 (61.90%) | 5270 (38.10%) | 8558 (99.95%) | 8328 (97.31%) | 230 (2.69%)  | 4 (0.05%)    |
| Direct w/ Depend       | 5:07      | 37:01     | 5:43        | 8562 (61.90%) | 5270 (38.10%) | 8334 (97.43%) | 8328 (99.93%) | 6 (0.07%)    | 228 (2.66%)  |
| Direct w/ Depend       | 5:06      | 36:51     | 5:49        | 8562 (61.90%) | 5270 (38.10%) | 8344 (97.43%) | 8338 (99.93%) | 6 (0.07%)    | 218 (2.55%)  |
| No Direct              | 5:21      | 37:57     | 8:16        | 8562 (61.90%) | 5270 (38.10%) | 8558 (99.95%) | N/A           | 8558 (100%)  | 4 (0.05%)    |
| No Direct              | 5:29      | 38:08     | 8:22        | 8562 (61.90%) | 5270 (38.10%) | 8558 (99.95%) | N/A           | 8558 (100%)  | 4 (0.05%)    |
| No Direct w/ Depend    | 12:51     | 153:31    | 12:58       | 8562 (61.90%) | 5270 (38.10%) | 5405 (36.87%) | N/A           | 5405 (100%)  | 3157 (36.87) |
| No Direct w/ Depend    | 12:53     | 153:33    | 12:51       | 8562 (61.90%) | 5270 (38.10%) | 5405 (36.87%) | N/A           | 5405 (100%)  | 3157 (36.87%)|

Cache Building Time
| Configuration          | Real Time | User Time | System Time | Cache Size | Cache Hits |
| No Caching             | 13:14     | 160:33    | 12:51       |            |            |
| Default                | 14:23     | 176:15    | 16:49       | 1GB        | 4.89%      |
| Direct w/ Depend       | 13:44     | 164:24    | 13:58       | 0.99GB     | 4.60%      |
| No Direct              | 14:11     | 170:26    | 15:44       | 0.95GB     | 4.88%      |
| No Direct w/ Depend    | 13:49     | 164:26    | 13:46       | 0.43GB     | 4.23%      |



ccache -C && ccache -z && rm -rf /opt/riscv && make clean && time make linux -j$(nproc) && ccache -s -v

C++ only
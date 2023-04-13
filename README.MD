# STEPS TO TEST

1. reset-tests.ps1
2. monitor-xxx.ps1
3. benchmark-xxx.ps1


# AFTER TESTS

1. draw graphs from terminal output
2. graphs from csv output
    * DATA -> From text/csv
    * DATA -> Text to columns (Select the time column first)
    * Insert -> Recommended table (scatter)
    * Quick layout to show x axis and give names to axis
        * x -> Percentage
        * y -> Time (ms)
    * TITLE:
        * The time it took to serve each percentage of the requests
3. graphs from resource monitoring output
    * DATA -> From text/csv
    * DATA -> Text to columns (Select the CPU column first)
    * Insert -> Scatter table (make sure time is on x-axis)
        * needed cloumns: Time, CPU, memory
    * Quick layout to show all axis (Layout 1)
        * x -> Time
        * y delete the axis title
    * TITLE:
        * Resource usage during benchmarks XXX


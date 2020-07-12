[global]
thread
direct=1
ioengine=libaio 
# group_reporting
log_avg_msec=1000
write_bw_log=1M-write.results
write_iops_log=1M-write.results
write_lat_log=1M-write.results
runtime=30
time_based

[write_job]
numjobs=1
bs=4K
rw=write

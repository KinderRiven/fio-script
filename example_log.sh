[global]
thread
direct=1
ioengine=libaio 
# group_reporting
log_avg_msec=1000
write_bw_log=bw.results
write_iops_log=iops.results
write_lat_log=lat.results

[write_job]
size=50G
numjobs=1
bs=4K
rw=write
runtime=30
time_based

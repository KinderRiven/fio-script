[global]
thread
direct=1
ioengine=libaio 
group_reporting

[write_job]
size=50G
numjobs=1
bs=4K
rw=write
runtime=30
time_based
log_avg_msec=1000
write_bw_log=write_job
write_iops_log=write_job
write_lat_log=write_job
[global]
thread
direct=1
ioengine=libaio 
group_reporting
log_avg_msec=1000
write_bw_log=bw_log
write_iops_log=iops_log
write_lat_log=lat_log

[write_job]
size=50G
numjobs=1
bs=4K
rw=write
# runtime=30
# time_based

[read_job]
size=50G
num_jobs=1
bs=4K
rw=read
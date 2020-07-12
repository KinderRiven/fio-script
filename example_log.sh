[global]
thread
direct=1
ioengine=libaio 
group_reporting
log_avg_msec=1000
write_bw_log=bw
write_iops_log=iops
write_lat_log=lat

[write_job]
size=50G
numjobs=1
bs=4K
rw=write
# runtime=30
# time_based
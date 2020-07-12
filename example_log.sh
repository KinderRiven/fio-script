[global]
thread
direct=1
ioengine=libaio 
group_reporting

# 记录IO -> 往文件的第[i]行，写了j大小的数据
# write_iolog=[]
# read_iolog=[]

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
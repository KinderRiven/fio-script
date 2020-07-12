[global]
rw=write
# directory=/home/hanshukai/ssd
direct=1
numjobs=1
output-format=normal
log_avg_msec=10000

[file1]
name=seq_job_1
bs=4K
io_engine=libaio
size=10G
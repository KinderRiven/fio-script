DATASET=" -size=10G -numjobs=4 -bs=4K"
LOG=" -log_avg_msec=1000 -write_bw_log=mlog -write_iops_log=mlog -write_lat_log=mlog"
IO=" -thread --direct=1 -ioengine=libaio"
TIME=" -runtime=30 -time_based"
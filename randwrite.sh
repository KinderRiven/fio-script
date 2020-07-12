DATASET=" -size=10G -numjobs=4 -bs=4K"
LOG=" -log_avg_msec=1000 -write_bw_log=mlog -write_iops_log=mlog -write_lat_log=mlog"
IO=" -thread -direct=1 -ioengine=libaio"
TIME=" -runtime=30 -time_based"


# warm up
fio -group_reporting  -rw=write $DATASET $IO $TIME

# seqwrite
fio -group_reporting  -rw=write $DATASET $IO $TIME $LOG
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p3700/seqwrite
mv *.svg p3700/seqwrite
rm -rf *.log

# seqread
fio -group_reporting  -rw=read $DATASET $IO $TIME $LOG
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p3700/seqread
mv *.svg p3700/seqread
rm -rf *.log

# randomwrite
fio -group_reporting  -rw=randwrite $DATASET $IO $TIME $LOG
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p3700/randwrite
mv *.svg p3700/randwrite
rm -rf *.log

# randomread
fio -group_reporting  -rw=randread $DATASET $IO $TIME $LOG
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p3700/randread
mv *.svg p3700/randread
rm -rf *.log
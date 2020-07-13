DATASET="-name=file -size=50G -numjobs=4 -bs=16K"
LOG=" -log_avg_msec=1000 -write_bw_log=mlog -write_iops_log=mlog -write_lat_log=mlog"
IO=" -thread --direct=1 -ioengine=libaio"
TIME=" -runtime=30 -time_based"

echo $DATASET
echo $IO
echo $TIME
echo $LOG

# P3700
# warm_up
# fio -group_reporting  -rw=write $DATASET $IO $TIME

# seqwrite
echo 'P3700_readwrite...'
fio -group_reporting readwrite.fio $TIME $LOG > p3700_seqwrite.log
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p3700/readwrite
mv *.svg p3700/readwrite
mv *.log p3700/readwrite

# randomread
echo 'P3700_randrws...'
fio -group_reporting readwrite.fio $TIME $LOG > p3700_randread.log
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p3700/randrw
mv *.svg p3700/randrw
mv *.log p3700/randrw

# P4800
# warm_up
# fio -directory=/home/hanshukai/ssd2 -group_reporting -rw=write $DATASET $IO $TIME

# seqwrite
echo 'P4800_readwrite...'
fio -directory=/home/hanshukai/ssd2 -group_reporting readwrite.fio $TIME $LOG > p4800_seqwrite.log
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p4800/seqwrite
mv *.svg p4800/seqwrite
mv *.log p4800/seqwrite

# randomwrite
echo 'P4800_readwrite...'
fio -directory=/home/hanshukai/ssd2 -group_reporting readwrite.fio $TIME $LOG > p4800_randwrite.log
./fio-fio-3.5/tools/fio_generate_plots mlog
mkdir -p p4800/randwrite
mv *.svg p4800/randwrite
mv *.log p4800/randwrite
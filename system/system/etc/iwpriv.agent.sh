#!/system/bin/sh
ROOT_PATH="/sdcard"
CMD="/system/bin/iwpriv"
rm $ROOT_PATH/iwpriv_result.txt
while read line
do
    $CMD $line >> $ROOT_PATH/iwpriv_result.txt 2>&1
done < $ROOT_PATH/iwpriv_para.txt
setprop persist.sys.iwpriv 0
exit 0


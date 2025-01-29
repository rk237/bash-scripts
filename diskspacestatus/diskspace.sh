#!/bin/bash
a=`df -h | grep -v tmpfs|awk '{print $5}' | cut -d '%' -f1`
for i in $a
do
        if [ $i -ge 40 ]   #you can set the parameter as you wish
        then
        echo check disk space  `df -h | grep $i`
        fi
done

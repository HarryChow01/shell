#! /usr/bin/awk -f


# cat /etc/passwd | awk -F":" '/zhou/ {print $1"\t"$7}'   #匹配带zhou的行
# awk -F ':' 'BEGIN {count=0;} {name[count] = $1;count++;}; END{for (i = 0; i < NR; i++) print i, name[i]}' /etc/passwd
# match func puts all pattern to arry
# echo 'this is wang,not wan' | awk '{match($0,/.+is([^,]+).+not(.+)/,a);print a[1],a[2]}'
# echo 'aaa bbb=123 pppxxx' | awk '{match($0, /.* (.+)=([0-9]+) .*/, a);print a[0];}'
# echo 'aaa bbb=123 pppxxx' | awk '{match($0, /.* (.+)=([0-9]+) .*/, array1);print array1[2];}'

BEGIN {
    x=0
    while (x<10) {
        print x;
        x+=1
    }
}



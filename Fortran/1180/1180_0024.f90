subroutine s1
1001format(32769 b33)  ! 8001
1002format(33023 b33)  ! 80FF
1003format(33025 b33)  ! 8101
1004format(33279 b33)  ! 81FF
1005format(33281 b33)  ! 8201
1006format(33535 b33)  ! 82FF
1007format(33537 b33)  ! 8301
1008format(33791 b33)  ! 83FF
1009format(33793 b33)  ! 8401
1010format(34047 b33)  ! 84FF
1011format(34049 b33)  ! 8501
1012format(33024 b33)  ! 8100
1013format(33280 b33)  ! 8200
1014format(33536 b33)  ! 8300
1015format(33792 b33)  ! 8400
1016format(34048 b33)  ! 8500
1017format(34304 b33)  ! 8600
1019format(34560 b33)  ! 8700
1020format(34816 b33)  ! 8800
1021format(35072 b33)  ! 8900
1022format(35328 b33)  ! 8A00
1023format(35584 b33)  ! 8B00
1024format(35840 b33)  ! 8C00
1025format(36096 b33)  ! 8D00
1026format(36352 b33)  ! 8E00
1027format(36608 b33)  ! 8F00
1028format(36864 b33)  ! 9000
1029format(40704 b33)  ! 9F00
1030format(44800 b33)  ! AF00
1031format(48896 b33)  ! BF00
1032format(52992 b33)  ! CF00
1033format(57088 b33)  ! DF00
1034format(61184 b33)  ! EF00
1035format(65280 b33)  ! FF00
1036format(65281 b33)  ! FF01
1037format(65535 b33)  ! FFFF
1038format(65536 b33)  !10000
1039format(65537 b33)  !10001
1040format(130816b33)  !1FF00
1041format(130817b33)  !1FF01
1042format(131071b33)  !1FFFF
1043format(131072b33)  !20000
1044format(131073b33)  !20001
1045format(131072b33)  !30000
1046format(131072b33)  !F0000
1047format(1048576b33) !100000
1048format(1048577b33) !100001
1049format(2097152b33) !200000
1050format(2097153b33) !200001
write(35 , 1001) 3,5
write(35 , 1002) 3,5
write(35 , 1003) 3,5
write(35 , 1004) 3,5
write(35 , 1005) 3,5
write(35 , 1006) 3,5
write(35 , 1007) 3,5
write(35 , 1008) 3,5
write(35 , 1009) 3,5
write(35 , 1010) 3,5
write(35 , 1011) 3,5
write(35 , 1012) 3,5
write(35 , 1013) 3,5
write(35 , 1014) 3,5
write(35 , 1015) 3,5
write(35 , 1016) 3,5
write(35 , 1017) 3,5
write(35 , 1019) 3,5
write(35 , 1020) 3,5
write(35 , 1021) 3,5
write(35 , 1022) 3,5
write(35 , 1023) 3,5
write(35 , 1024) 3,5
write(35 , 1025) 3,5
write(35 , 1026) 3,5
write(35 , 1027) 3,5
write(35 , 1028) 3,5
write(35 , 1029) 3,5
write(35 , 1030) 3,5
write(35 , 1031) 3,5
write(35 , 1032) 3,5
write(35 , 1033) 3,5
write(35 , 1034) 3,5
write(35 , 1035) 3,5
write(35 , 1036) 3,5
write(35 , 1037) 3,5
write(35 , 1038) 3,5
write(35 , 1039) 3,5
write(35 , 1040) 3,5
write(35 , 1041) 3,5
write(35 , 1042) 3,5
write(35 , 1043) 3,5
write(35 , 1044) 3,5
write(35 , 1045) 3,5
write(35 , 1046) 3,5
write(35 , 1047) 3,5
write(35 , 1048) 3,5
write(35 , 1049) 3,5
write(35 , 1050) 3,5
end
call s1
call chk
print *,'sngg184n : pass'
end
subroutine chk
integer::a,b
rewind 35
do k=1,49
read(35,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
end do
end

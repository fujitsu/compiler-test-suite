subroutine s1
1001format(32769 b33)  ! 8001
1002format(33023 b33)  ! 80FF
1031format(33025 b33)  ! 8101
1041format(33279 b33)  ! 81FF
1051format(33281 b33)  ! 8201
1061format(33535 b33)  ! 82FF
1071format(33537 b33)  ! 8301
1081format(33791 b33)  ! 83FF
1009format(33793 b33)  ! 8401
1010format(34047 b33)  ! 84FF
1011format(34049 b33)  ! 8501
1012format(65281 b33)  ! FF01
1013format(65535 b33)  ! FFFF
1014format(130817b33)  !1FF01
1015format(131071b33)  !1FFFF
1016format(65537 b33)  !10001
1017format(131073b33)  !20001
1018format(1048577b33) !100001
1019format(2097153b33) !200001
write(36,1001) 3,5
write(36,1002) 3,5
write(36,1031) 3,5
write(36,1041) 3,5
write(36,1051) 3,5
write(36,1061) 3,5
write(36,1071) 3,5
write(36,1081) 3,5
write(36,1009) 3,5
write(36,1010) 3,5
write(36,1011) 3,5
write(36,1012) 3,5
write(36,1013) 3,5
write(36,1014) 3,5
write(36,1015) 3,5
write(36,1016) 3,5
write(36,1017) 3,5
write(36,1018) 3,5
write(36,1019) 3,5
end
call s1
call chk
print *,'sngg185n : pass'
end
subroutine chk
integer::a,b
rewind 36
do k=1,19
read(36,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
end do
end

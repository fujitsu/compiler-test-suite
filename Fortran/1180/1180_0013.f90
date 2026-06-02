subroutine s1
10format(32769   i1  )  ! 8001
11format(33023   i1  )  ! 80FF
12format(33025   i1  )  ! 8101
13format(33279   i1  )  ! 81FF
14format(33281   i1  )  ! 8201
15format(33535   i1  )  ! 82FF
16format(33537   i1  )  ! 8301
17format(33791   i1  )  ! 83FF
18format(33793   i1  )  ! 8401
19format(34047   i1  )  ! 84FF
20format(34049   i1  )  ! 8501
21format(65281   i1  )  ! FF01
22format(65535   i1  )  ! FFFF
23format(130817  i1  )  !1FF01
24format(131071  i1  )  !1FFFF
25format(65537   i1  )  !10001
26format(131073  i1  )  !20001
27format(1048577  i1  ) !100001
28format(2097153  i1  ) !200001
29format(268435457  i1  ) !10000001
30format(2147483393  i1  )!7FFFFF01
31format(2147483647  i1  )!7FFFFFFF
write(24,10) 3
write(24,11) 3
write(24,12) 3
write(24,13) 3
write(24,14) 3
write(24,15) 3
write(24,16) 3
write(24,17) 3
write(24,18) 3
write(24,19) 3
write(24,20) 3
write(24,21) 3
write(24,22) 3
write(24,23) 3
write(24,24) 3
write(24,25) 3
write(24,26) 3
write(24,27) 3
write(24,28) 3
write(24,29) 3
write(24,30) 3
write(24,31) 3
end
call s1
call chk
print *,'sngg173n : pass'
end
subroutine chk
integer::a
rewind 24
do k=1,22
read(24,*) a
if (a/=3) print *,1011
end do
end

subroutine s1
write(50,'(32769  (i1) )') 3  ! 8001
write(50,'(33023  (i1) )') 3  ! 80FF
write(50,'(33025  (i1) )') 3  ! 8101
write(50,'(33279  (i1) )') 3  ! 81FF
write(50,'(33281  (i1) )') 3  ! 8201
write(50,'(33535  (i1) )') 3  ! 82FF
write(50,'(33537  (i1) )') 3  ! 8301
write(50,'(33791  (i1) )') 3  ! 83FF
write(50,'(33793  (i1) )') 3  ! 8401
write(50,'(34047  (i1) )') 3  ! 84FF
write(50,'(34049  (i1) )') 3  ! 8501
write(50,'(65281  (i1) )') 3  ! FF01
write(50,'(65535  (i1) )') 3  ! FFFF
write(50,'(130817 (i1) )') 3  !1FF01
write(50,'(131071 (i1) )') 3  !1FFFF
write(50,'(65537  (i1) )') 3  !10001
write(50,'(131073 (i1) )') 3  !20001
write(50,'(1048577 (i1) )') 3 !100001
write(50,'(2097153 (i1) )') 3 !200001
write(50,'(268435457 (i1) )') 3 !10000001
write(50,'(2147483393 (i1) )') 3!7FFFFF01
write(50,'(2147483647 (i1) )') 3!7FFFFFFF
end
call s1
call chk
print *,'sngg990m : pass'
end
subroutine chk
integer::a
rewind 50
do k=1,22
read(50,*) a
if (a/=3) print *,1011
end do
end

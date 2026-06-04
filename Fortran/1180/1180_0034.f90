subroutine s1
write(46,'(32769 b33)') 3,5  ! 8001
write(46,'(33023 b33)') 3,5  ! 80FF
write(46,'(33025 b33)') 3,5  ! 8101
write(46,'(33279 b33)') 3,5  ! 81FF
write(46,'(33281 b33)') 3,5  ! 8201
write(46,'(33535 b33)') 3,5  ! 82FF
write(46,'(33537 b33)') 3,5  ! 8301
write(46,'(33791 b33)') 3,5  ! 83FF
write(46,'(33793 b33)') 3,5  ! 8401
write(46,'(34047 b33)') 3,5  ! 84FF
write(46,'(34049 b33)') 3,5  ! 8501
write(46,'(65281 b33)') 3,5  ! FF01
write(46,'(65535 b33)') 3,5  ! FFFF
write(46,'(130817b33)') 3,5  !1FF01
write(46,'(131071b33)') 3,5  !1FFFF
write(46,'(65537 b33)') 3,5  !10001
write(46,'(131073b33)') 3,5  !20001
write(46,'(1048577b33)') 3,5 !100001
write(46,'(2097153b33)') 3,5 !200001
end
call s1
call chk
print *,'sngg986m : pass'
end
subroutine chk
integer::a,b
rewind 46
do k=1,19
read(46,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
end do
end

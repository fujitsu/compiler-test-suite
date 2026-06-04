subroutine s1
write(48,'(32769 b33)') 3,5  ! 8001
write(48,'(33023 b33)') 3,5  ! 80FF
write(48,'(33025 b33)') 3,5  ! 8101
write(48,'(33279 b33)') 3,5  ! 81FF
write(48,'(33281 b33)') 3,5  ! 8201
write(48,'(33535 b33)') 3,5  ! 82FF
write(48,'(33537 b33)') 3,5  ! 8301
write(48,'(33791 b33)') 3,5  ! 83FF
write(48,'(33793 b33)') 3,5  ! 8401
write(48,'(34047 b33)') 3,5  ! 84FF
write(48,'(34049 b33)') 3,5  ! 8501
write(48,'(65281 b33)') 3,5  ! FF01
write(48,'(65535 b33)') 3,5  ! FFFF
write(48,'(130817b33)') 3,5  !1FF01
write(48,'(131071b33)') 3,5  !1FFFF
write(48,'(65537 b33)') 3,5  !10001
write(48,'(131073b33)') 3,5  !20001
write(48,'(1048577b33)') 3,5 !100001
write(48,'(2097153b33)') 3,5 !200001
write(48,'(268435457b33)') 3,5 !10000001
write(48,'(2147483393b33)') 3,5!7FFFFF01
write(48,'(2147483647b33)') 3,5!7FFFFFFF
end
call s1
call chk
print *,'sngg988m : pass'
end
subroutine chk
integer::a,b
rewind 48
do k=1,22
read(48,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
end do
end

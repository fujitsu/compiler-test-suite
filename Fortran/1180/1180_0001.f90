subroutine s1
write(8,'(32769   i1  )') 3  ! 8001
write(8,'(33023   i1  )') 3  ! 80FF
write(8,'(33025   i1  )') 3  ! 8101
write(8,'(33279   i1  )') 3  ! 81FF
write(8,'(33281   i1  )') 3  ! 8201
write(8,'(33535   i1  )') 3  ! 82FF
write(8,'(33537   i1  )') 3  ! 8301
write(8,'(33791   i1  )') 3  ! 83FF
write(8,'(33793   i1  )') 3  ! 8401
write(8,'(34047   i1  )') 3  ! 84FF
write(8,'(34049   i1  )') 3  ! 8501
write(8,'(65281   i1  )') 3  ! FF01
write(8,'(65535   i1  )') 3  ! FFFF
write(8,'(130817  i1  )') 3  !1FF01
write(8,'(131071  i1  )') 3  !1FFFF
write(8,'(65537   i1  )') 3  !10001
write(8,'(131073  i1  )') 3  !20001
write(8,'(1048577  i1  )') 3 !100001
write(8,'(2097153  i1  )') 3 !200001
write(8,'(268435457  i1  )') 3 !10000001
write(8,'(2147483393  i1  )') 3!7FFFFF01
write(8,'(2147483647  i1  )') 3!7FFFFFFF
end
call s1
call chk
print *,'sngg149n : pass'
end
subroutine chk
integer::a
rewind 8
do k=1,22
read(8,*) a
if (a/=3) print *,1011
end do
end

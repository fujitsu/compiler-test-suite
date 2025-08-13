  integer*4 :: a(1024), i, result,ii(1024),pos1
  write (6, FMT='(A)', ADVANCE='NO') ' Program start :'
  do i = 1,1024
    ii(i) = i
  enddo
  close(38,status="delete")
  open(38,file='fort.38',err=999,status="new",access="stream",form='unformatted')
  write(38) ii
  close(unit=38,err=999,status="keep")
  open(file="fort.38", unit=38, access="stream",status="old",form='unformatted')
  read(38) a
  do i = 1,1024
    if (a(i) .ne. i) print *,'error at ', i
  enddo
  do i = 1024,1,-1
   read(38, pos=(i-1)*4+1) result
   inquire(UNIT=38, pos = pos1)
   write(6,*) "pos= ",pos1
   if (result .ne. i) print *,'error at ', i
   print *,i
  enddo
  print *,"pass"
999 continue
 close(38,status="delete")
end

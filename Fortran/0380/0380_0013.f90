  integer*4 :: a(1024), i, result,ii(1024),pos1
  write (6, FMT='(A)', ADVANCE='NO'), ' Program start :'
  do i = 1,1024
    ii(i) = i
  enddo
  close(54,status="delete")
  open(54,file='fort.54',err=999,status="new",access="stream",form='unformatted')
  write(54) ,ii
  close(unit=54,err=999,status="keep")
  open(file="fort.54", unit=54, access="stream",status="old",form='unformatted')
  read(54)a
  do i = 1,1024
    if (a(i) .ne. i) write(6,*),'error at ', i
  enddo
  do i = 1024,1,-1
   read(54, pos=(i-1)*4+1) ,result
   inquire(UNIT=54, pos = pos1)
   write(6,*), "pos= ",pos1
   if (result .ne. i) write(6,*),'error at ', i
   write (6,*),i
  enddo
  write(6,*),"pass"
999 continue
 close(54,status="delete")
end

      character*22 ::file='test_temp.dat'
      open(8,file=file,action='write')
      do 100 i=1,10
         write(8,'(i3)') i
  100 continue
      close(8)
      open(8,file=file,action='write')
      do 200 i=10,80,10
         write(8,'(i3)') i
  200 continue
      close(8)
      open(8,file=file)
      do i=10,80,10
      read(8,'(i3)') j
      if (i/=j)print *,'error',j
      end do
      read(8,'(i3)',end=400) j
      print *,'error 2'
400   print *,'pass'
      close(8,status='delete')
      end

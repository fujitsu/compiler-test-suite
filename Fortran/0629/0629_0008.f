      character*11  a(10)
      data  a/10*'0011223300 '/
       do 10 i=1,9
         a(i)='ABCD-111   '
 10    continue
      write(6,'(A11)') a
      stop
      end

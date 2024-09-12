      character*11  a(10),b(10)
      data  a/10*'0011223300 '/
      data  b/10*'AABB-111   '/
       do 10 i=1,9
         a(2)=b(i)
 10    continue
      write(6,'(A11)') a
      stop
      end

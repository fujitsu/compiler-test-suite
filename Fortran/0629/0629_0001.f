      character*11  a(10),s
      data  a/10*'0011223300 '/
      data  s/'AABB-111   '/
       do 10 i=1,9
         a(3)=s
 10    continue
      write(6,'(A11)') a
      stop
      end

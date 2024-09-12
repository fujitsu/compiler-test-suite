      character*11  a(10),b(10)
      data  a/10*'0011223300 '/
      data  b/10*'AABB-CCC   '/
       do 10 i=1,9
         a(i)(1:i)=b(i)
 10    continue
      write(6,'(A11)') a
      stop
      end

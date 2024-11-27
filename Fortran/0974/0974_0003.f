      character*11  a(10),b(10)
      data  a/10*'0011223300 '/
      data  b/10*'ABCD-111   '/
       do 10 i=1,9
         a(i)=b(2)
 10    continue
      write(6,*) a
      stop
      end

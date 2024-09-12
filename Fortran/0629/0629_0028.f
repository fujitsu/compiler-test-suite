      logical a(10000)/10000*.false./
      character*1  b(10000),c(10000)
      data  b/10000*'1'/
      data  c/10000*'5 '/
       do 10 i=1,9999
         a(2) = b(i)<=c(i)
 10    continue
      write(6,*) a(1),a(2),a(3),a(9999),a(10000)
      stop
      end

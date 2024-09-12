      character*10 a(10)
      character*5  b(10),c(10)
      data  b/10*'+FORT'/
      data  c/10*'RAN++'/
       do 10 i=1,10
         a(i)=b(i)//c(i)
 10    continue
      write(6,*) a
      stop
      end

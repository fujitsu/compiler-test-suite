      character*10 a(10)
      character*5  b(10),s
      data  b/10*'+ABCD'/
      data  s/'EFG++'/
       do 10 i=1,10
         a(i)=b(i)//s
 10    continue
      write(6,*) a
      stop
      end

      character*10 a(10)
      character*5  b(10),c(10)
      data  a/10*'AA AA AA A'/
      data  b/10*'ABCD-'/
      data  c/10*'EFG--'/
       do 10 i=1,10
         a(3)=b(i)//c(i)
 10    continue
      write(6,*) a
      stop
      end
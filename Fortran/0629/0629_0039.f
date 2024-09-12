      integer x(10)
      character*10 a(10)
      character*5  b(10),c(10)
      data  x/1,1,1,0,1,0,1,0,0,1/
      data  a/10*'AA AA AA A'/
      data  b/10*'FORT-'/
      data  c/10*'RAN+-'/
       do 10 i=1,10
         if (x(i).eq.1) then
           a(i)=b(i)//c(i)
         endif
 10    continue
      write(6,*) a
      stop
      end

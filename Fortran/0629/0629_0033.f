      integer a(10)/10*0/
      character*1  b,c(10)
      data  b/'1'/
      data  c/10*'5 '/
       do 10 i=1,9
         if(b<=c(i)) then
           a(i) = i
         endif
 10    continue
      write(6,*) a
      stop
      end

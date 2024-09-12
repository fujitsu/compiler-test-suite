      integer a(10)/10*0/
      character*1  b(10),c(10)
      data  b/10*'1'/
      data  c/10*'5 '/
       do 10 i=1,9
         if(b(i)<=c(i)) then
           a(i) = i
         endif
 10    continue
      write(6,*) a
      stop
      end

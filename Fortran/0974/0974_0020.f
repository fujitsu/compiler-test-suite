      integer a(10)/10*0/
      character*11  b(10)
      data  b/10*'ABCDEFG111 '/
       do 10 i=1,9
         if(b(i)=='ABCDEFG111 ') then
           a(i) = i
         endif
 10    continue
      write(6,*) a
      stop
      end

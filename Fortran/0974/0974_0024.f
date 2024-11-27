      integer a(10)/10*0/
      character*7 b(10)/10*'ABCDEFG'/
      character*7 c(10)/10*'ABCDEFG'/
       do 10 i=1,9
         if('ABCDEFG111 '=='ABCDEFG222') then
           a(i) = i
         else if(b(i)==c(5)) then
           a(i) = -i
         endif
 10    continue
      write(6,*) a
      stop
      end

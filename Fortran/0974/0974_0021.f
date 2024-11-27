      integer a(10)/10*0/
       do 10 i=1,9
         if('ABCDEFG111 '=='ABCDEFG111 ') then
           if('ABCDEFG222'=='ABCDEFG222') then
             a(i) = i
           endif
         endif
 10    continue
      write(6,*) a
      stop
      end

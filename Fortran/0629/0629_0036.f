      integer a(10)/10*0/
       do 10 i=1,9
         if('FORTAN111 '=='FORTAN222') then
           a(i) = i
         else
           a(i) = -i
         endif
 10    continue
      write(6,*) a
      stop
      end

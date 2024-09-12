      integer a(10)/10*0/
       do 10 i=1,9
         if('FORTRAN111 '=='FORTRAN111 ') then
           if('FORTRAN222'=='FORTRAN222') then
             a(i) = i
           endif
         endif
 10    continue
      write(6,*) a
      stop
      end

      integer a(10)/10*0/
      character*7 b(10)/10*'FORTRAN'/
      character*7 c(10)/10*'FORTRAN'/
       do 10 i=1,9
         if('FORTRAN111 '=='FORTRAN222') then
           a(i) = i
         else if(b(i)==c(i)) then
           a(i) = -i
         endif
 10    continue
      write(6,*) a
      stop
      end

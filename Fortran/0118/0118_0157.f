      real * 8 a(20)
      N=10
      DO 10 i=1,20
       if (N.eq.10) then
        a(i) = 1
       else
        a(i) = 2
       endif
   10 CONTINUE
      write(6,9) a
 9    format(5f10.5)
      stop
      end

       a=1;b=2
       call sub(a,b,*100,*200)
100    print *,a
       a=3;b=4
200    print *,b
       end
 
       subroutine sub(x,y,*,*)
       print *,x,y
       if( x.eq.1 )then
          return 1
       else
          return 2
       endif
       end

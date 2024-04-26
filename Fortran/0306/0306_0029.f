       integer*8 i8x,i8y(10)/1,-2,3,-4,5,-1,2,-3,4,-5/
       real*8 r8x(10)
       i8x=3
       do i=1,10
          if(i8x.ge.i8y(i)) then
             i8x = i8y(i)
          endif
          r8x(i) = 1.0
 10       continue
       end do
       if (i8x .eq. -5 .and. r8x(1).eq. 1.0) then
          write(6,*) "ok"
       else
          write(6,*) "ng"
          write(6,*) i8x
          write(6,1) r8x(1)
       endif
 1     format(f10.3)
       end



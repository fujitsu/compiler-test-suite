       integer*8 a(16)/16*0/,x/0/,y(2)
       integer*8 b(16)/1,-2,-3,4,-5,-16,-9,8,7,6,1,8,20,-2,4,5/
       integer*8 c(16)/16*4/

       y(1) = 0
       do i=1,16
          y(1) = max(y(1),b(i))
       enddo   
       if (y(1) .ne. 20) then
          write(6,*) y(1)
          stop 1
       endif

       y(1) = 0
       do i=1,16
          y(1) = min(y(1),b(i))
       enddo   
       if (y(1) .ne. -16) then
          write(6,*) y(1)
          stop 2
       endif

       y(1) = 0
       do i=1,16
          if (y(1).gt.b(i)) then
             y(1) = b(i)
          endif
       enddo   
       if (y(1) .ne. -16) then
          write(6,*) y(1)
          stop 3
       endif

       y(1) = 0
       do i=1,16
          if (y(1).le.b(i)) then
             y(1) = b(i)
          endif
       enddo   
       
       if (y(1) .ne. 20) then
          write(6,*) y(1)
          stop 4
       endif
       write(6,*) ' ok '

       end

       integer*8 a(16)/16*0/,x/0/,y(2)
       integer*8 b(16)/1,-2,-3,4,-5,-16,-9,8,7,6,1,8,20,-2,4,5/
       integer*8 c(16)/16*4/

       x = 0
       do i=1,16
          x = max(x,b(i))
       enddo   
       if (x .ne. 20) then
          write(6,*) x
          stop 1
       endif

       x = 0
       do i=1,16
          x = min(x,b(i))
       enddo   
       if (x .ne. -16) then
          write(6,*) x
          stop 2
       endif

       x = 0
       do i=1,16
          if (x.gt.b(i)) then
             x = b(i)
          endif
       enddo   
       if (x .ne. -16) then
          write(6,*) x
          stop 3
       endif

       x = 0
       do i=1,16
          if (x.le.b(i)) then
             x = b(i)
          endif
       enddo   
       if (x .ne. 20) then
          write(6,*) x
          stop 4
       endif
       
       write(6,*) ' ok '
       end

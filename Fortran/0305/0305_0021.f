       integer s/0/
       integer a(10,10)/100*1/

       do i=1,10
         do j=1,10
           s = s + a(j,i)
         enddo
       enddo

       if (s.EQ.100) then
         print*, "OK"
       else
         print*, "NG"
         print*, "s = ",s
       endif
       end

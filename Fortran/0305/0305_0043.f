       real a(10,10)/100*0/
       real b(10)/10*1/
       call sub1(a,b,10,10)
       end

       subroutine sub1(a,b,n,m)
       real a(n,m)
       real b(n)
       integer n,m,ng_flag

       do j=1,n
         do i=1,m
           b(i) = i
           a(i,j) = b(i)
         enddo
       enddo

       ng_flag = 0
       do i=1,10
         if (a(i,1).ne.b(i)) then
           ng_flag = 1
         endif
       enddo

       if (ng_flag.eq.0) then
         print*, "OK"
       else
         print*, "NG"
       endif

       return
       end

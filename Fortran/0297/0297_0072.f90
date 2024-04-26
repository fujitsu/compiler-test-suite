       integer c(10)/1,2,3,4,5,6,7,8,9,10/
       do i=1,10 
         call sub1(c(i))
       enddo
       end

       subroutine sub1(n)
       real*4 a(100),b(100)
       
       data a/100*0/,b/100*1/
       integer flag/0/,n

       do i=1,100,n
         a(i) = b(i)
       enddo

       do i=1,100,n
         if (a(i) .ne. b(i)) then
           flag = 1
         endif
       enddo

       if (flag .eq. 0) then 
         print*, "OK"
       else
         print*, "NG"
       endif
       return
       end

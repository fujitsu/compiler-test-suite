       real(kind=8),dimension(100) :: a,b,c,d
       integer(kind=8),dimension(100) :: elm
       real(kind=8) :: error
       data a/100*1.1/,b/100*2.2/,c/100*3.3/,d/100*4.4/
       data error/0.000001/

!$omp parallel do
       do i=1,100
         elm(i) = i
       enddo

!$omp parallel do schedule(static,2)
       do i=1,100
         a(elm(i)) = a(i) + b(i) + c(i)
       enddo

!$omp parallel do schedule(dynamic,3)
       do i=1,100
         c(elm(i)) = b(i) + d(i)
       enddo

!$omp parallel do schedule(guided)
       do i=1,100
         d(elm(i)) = d(i) + b(i)
       enddo
       
       do i=1,100
         if (abs(a(i)-c(i)) .gt. error .or. abs(a(i)-d(i)) .gt. error) goto 100
       enddo
 100   if (i.ne.101) then
         print*, "## test1 NG ##"
       else
         print*, "## test1 OK ##"
       endif

       end



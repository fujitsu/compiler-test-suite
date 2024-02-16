       real(kind=8),dimension(100) :: b,c,d
       data b/100*2.2/,c/100*3.3/,d/100*4.4/
       data n/0/

!$omp parallel do ordered
       do i=1,100
!$omp ordered
         n = n + 1
!$omp end ordered
       enddo

!$omp parallel
!$omp do
       do i=1,100
         c(i) = b(i)
       enddo

!$omp do ordered
       do i=1,100
         d(i) = b(i)
       enddo
!$omp end parallel
       
       do i=1,100
         if (n .ne. 100 .or. c(i) .ne. d(i)) goto 100
       enddo
 100   if (i.ne.101) then
         print*, "## test1 NG ##"
       else
         print*, "## test1 OK ##"
       endif

       end



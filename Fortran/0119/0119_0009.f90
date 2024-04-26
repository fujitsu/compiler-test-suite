       integer(kind=4),dimension(100) :: a
       integer(kind=4) :: n
       data a/100*1/
       data n/0/

!$omp parallel do 
       do i=1,100
!$omp critical
         n = i + 1
         a(i) = n
!$omp end critical
       enddo

       n = 0
!$omp parallel do
       do i=1,100
!$omp atomic
         n = n + 1
       enddo

       do i=1,100
         if (a(i) .ne. (i+1)) goto 100
       enddo
 100   if (i.ne.101) then
         print*, "## test1 NG ##"
       else
         print*, "## test1 OK ##"
       endif

       if (n.ne.100) then
         print*, "## test2 NG ##"
       else
         print*, "## test2 OK ##"
       endif

       end



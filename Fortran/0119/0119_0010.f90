       common /xyz/n
       integer(kind=4) :: n
!$omp threadprivate(/xyz/)

       call sub1()
       end

       subroutine sub1()
       common /xyz/n
       integer(kind=4),dimension(100) :: a,elm
       integer(kind=4) :: n
       data a/100*0/

!$omp threadprivate(/xyz/)

!$omp parallel do
       do i=1,100
         elm(i) = i
       enddo

!$omp parallel do
       do i=1,100
         n = i
         a(elm(i)) = a(i) + n
       enddo
!$omp end parallel do

       do i=1,100
         if (a(i).ne.i) goto 100
       enddo

  100  if (i.ne.101) then
         print*, "## test1 NG ##"
       else
         print*, "## test1 OK ##"
       endif

       return
       end



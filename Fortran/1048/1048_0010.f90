     program main
       integer i,a
       integer,allocatable::b(:)
       allocate( b(10) )
       a=-99
       b=100
!$omp parallel
!$omp do ordered lastprivate(a,b)
       do i=1,10
!$omp   ordered
        a = i
        b = a
!$omp   end ordered
       end do
!$omp end do
!$omp end parallel
       if( a == 10 .and. b(10) == 10 ) then
         print *,'OK'
       else
         print *,"NG a=",a
       endif
     end program main

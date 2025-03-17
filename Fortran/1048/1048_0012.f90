     program main
       integer i
       integer,allocatable::a
       allocate( a )
       a=-99
!$omp parallel
!$omp do ordered reduction(+:a)
       do i=1,10
!$omp   ordered
        a = a + 2
!$omp   end ordered
       end do
!$omp end do
!$omp end parallel
       if( a == (-99+10*2) ) then
         print *,'OK'
       else
         print *,"NG a=",a
       endif
     end program main

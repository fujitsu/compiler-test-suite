     program main
       integer i,a
       a=0
!$omp parallel
!$omp do ordered
       do i=1,10
!$omp   ordered
        a = i
!$omp   end ordered
       end do
!$omp end do
!$omp end parallel
       if( a .eq. 10 ) then
         print *,'OK'
       else
         print *,"NG a=",a
       endif
     end program main

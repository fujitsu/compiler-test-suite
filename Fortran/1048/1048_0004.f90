     program main
       integer i,a
       a=0
!$omp parallel
!$omp do schedule(dynamic)
       do i=1,10
!$omp   critical
        a = a+i
!$omp   end critical
       end do
!$omp end do
!$omp end parallel
       if( a .eq. 55 ) then
         print *,'OK'
       else
         print *,"NG a=",a
       endif
     end program main

     program main
       integer i,a(10)
       a=-1
!$omp parallel
!$omp do ordered
       do 100 i=1,10
        if( i > 8 ) goto 100
!$omp   ordered
        a(i) = i
!$omp   end ordered
  100  continue
!$omp end do
!$omp end parallel
       if( a(8) == 8 .and. a(9) == -1 ) then
         print *,'OK'
       else
         print *,"NG a=",a
       endif
     end program main

     program main
       integer i,j,a(10,10)
       a=-1
!$omp parallel
!$omp do ordered
       do 200 j=1,10
        if( j > 8 ) goto 200
       do 100 i=1,10
!$omp   ordered
        a(i,j) = i
!$omp   end ordered
  100  continue
  200  continue
!$omp end do
!$omp end parallel
       if( a(8,1) == 8 .and. a(8,9) == -1 .and. a(1,1) == 1 .and. a(10,10) == -1 ) then
         print *,'OK'
       else
         print *,"NG a=",a
       endif
     end program main

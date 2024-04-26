    module m1
      type xx
        integer,allocatable,dimension(:)::a
      end type
    end 

       implicit none
!$omp parallel default(none)
       call foo(0)
       call foo(1)
!$omp end parallel
print *,'pass'
       end

       subroutine foo(iflag)
       use m1
       implicit none
       integer iflag
       type(xx),              save :: wk
       type(xx),              save :: ww
!$omp threadprivate(wk,ww)
       if (iflag .eq. 0) then
         write(1,'("step 1 : 0x",z16.16)') loc(wk)
         allocate(wk%a(2))
       else if (iflag .eq. 1) then
         write(1,'("step 2 : 0x",z16.16)') loc(wk)
       endif
       wk%a=(/1,2/)
       ww=wk
       if(any(wk%a/=(/1,2/)))print *,'error'
       if(any(ww%a/=(/1,2/)))print *,'error-2'
       end

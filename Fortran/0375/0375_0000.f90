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
       type(xx), allocatable, save :: wk(:)
       type(xx),              save :: ww
!$omp threadprivate(wk,ww)
       if (iflag .eq. 0) then
         allocate(wk(100))
         write(1,'("step 1 : 0x",z16.16)') loc(wk)
       else if (iflag .eq. 1) then
         write(1,'("step 2 : 0x",z16.16)') loc(wk)
         return 
       endif
       allocate(wk(100)%a(2))
       wk(100)%a=(/1,2/)
       ww=wk(100)
       if(any(wk(100)%a/=(/1,2/)))print *,'error'
       if(any(ww%a/=(/1,2/)))print *,'error-2'
       end

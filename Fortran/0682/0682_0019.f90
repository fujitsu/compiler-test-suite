module mod
implicit none
integer,parameter:: n = 10015

integer(kind=4) a(N)
integer(kind=4) b(N)

contains

  integer(kind=4) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=4),value:: arg
    my_fun = arg * 3
  end function my_fun

  subroutine calc()
    integer*4 i
    integer(kind=4) tmp
    !$omp simd
    do i=1,N
       tmp = my_fun(b(i))
       a(i) = tmp
!$omp ordered simd
       a(i) = tmp + 1
!$omp end ordered
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=4) function ff(arg)
      integer(kind=4),value:: arg
      end function ff
    end interface
    integer*4 i
    do i=1,N
       if (a(i) .ne. ff(b(i))+1) then
         print *, "NG", i, a(i), ff(b(i))
         stop
       endif
    end do
  end subroutine check

end module

use mod

integer*4 i
do i=1,N
   b(i) = i
end do
call calc()
call check(my_fun)

print *, "PASS"
end

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

  subroutine check(ff)
    interface
      integer(kind=4) function ff(arg)
      integer(kind=4),value:: arg
      end function ff
    end interface
    integer*4 i
    do i=1,N
       if (a(i) .ne. ff(b(i))+1) then
          print *, i, a(i), ff(b(i))+1
         stop "NG-1"
       endif
    end do
  end subroutine check

end module

use mod

integer*4 i
do i=1,N
   b(i) = i
end do

block
    integer*4 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i))
!$omp ordered simd
       a(i) = a(i) + 1
!$omp end ordered
    end do
end block

call check(my_fun)

print *, "PASS"
end

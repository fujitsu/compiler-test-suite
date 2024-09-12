!
!
module type_mod_1_1
integer,parameter:: res_ikind = 1
integer,parameter:: arg_ikind = 4
integer,parameter:: mask_kind = 1
end module
module type_mod_2_1
integer,parameter:: res_ikind = 2
integer,parameter:: arg_ikind = 4
integer,parameter:: mask_kind = 2
end module
module type_mod_4_1
integer,parameter:: res_ikind = 4
integer,parameter:: arg_ikind = 4
integer,parameter:: mask_kind = 4
end module
module type_mod_8_1
integer,parameter:: res_ikind = 8
integer,parameter:: arg_ikind = 4
integer,parameter:: mask_kind = 8
end module

module mod_1_1
use type_mod_1_1
implicit none
integer,parameter:: n = 10003
integer,parameter:: np = 100

integer(kind=res_ikind) a(NP, N)
integer(kind=arg_ikind) b(NP, N)
integer(kind=mask_kind) m(NP, N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i, j
    do j=1,NP
    !$omp simd
    do i=1,N
       a(j, i) = my_fun(b(j, i))
    end do
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_1_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*8 i, j
    do j=1,NP
    do i=1,N
       if (a(j, i) .ne. ff(b(j, i))) then
         stop
       endif
    end do
    end do
  end subroutine check

  subroutine test_1_1
    integer*8 i, j
    do j=1,NP
    do i=1,N
       b(i,j) = cmplx(i , -i)
    end do
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_1
use type_mod_2_1
implicit none
integer,parameter:: n = 10003
integer,parameter:: np = 100

integer(kind=res_ikind) a(NP, N)
integer(kind=arg_ikind) b(NP, N)
integer(kind=mask_kind) m(NP, N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i, j
    do j=1,NP
    !$omp simd
    do i=1,N
       a(j, i) = my_fun(b(j, i))
    end do
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_2_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*8 i, j
    do j=1,NP
    do i=1,N
       if (a(j, i) .ne. ff(b(j, i))) then
         stop
       endif
    end do
    end do
  end subroutine check

  subroutine test_2_1
    integer*8 i, j
    do j=1,NP
    do i=1,N
       b(i,j) = cmplx(i , -i)
    end do
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_1
use type_mod_4_1
implicit none
integer,parameter:: n = 10003
integer,parameter:: np = 100

integer(kind=res_ikind) a(NP, N)
integer(kind=arg_ikind) b(NP, N)
integer(kind=mask_kind) m(NP, N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i, j
    do j=1,NP
    !$omp simd
    do i=1,N
       a(j, i) = my_fun(b(j, i))
    end do
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_4_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*8 i, j
    do j=1,NP
    do i=1,N
       if (a(j, i) .ne. ff(b(j, i))) then
         stop
       endif
    end do
    end do
  end subroutine check

  subroutine test_4_1
    integer*8 i, j
    do j=1,NP
    do i=1,N
       b(i,j) = cmplx(i , -i)
    end do
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_1
use type_mod_8_1
implicit none
integer,parameter:: n = 10003
integer,parameter:: np = 100

integer(kind=res_ikind) a(NP, N)
integer(kind=arg_ikind) b(NP, N)
integer(kind=mask_kind) m(NP, N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i, j
    do j=1,NP
    !$omp simd
    do i=1,N
       a(j, i) = my_fun(b(j, i))
    end do
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_8_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*8 i, j
    do j=1,NP
    do i=1,N
       if (a(j, i) .ne. ff(b(j, i))) then
         stop
       endif
    end do
    end do
  end subroutine check

  subroutine test_8_1
    integer*8 i, j
    do j=1,NP
    do i=1,N
       b(i,j) = i
    end do
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

use mod_1_1
use mod_2_1
use mod_4_1
use mod_8_1
call test_1_1
call test_2_1
call test_4_1
call test_8_1
print *, "PASS"
end

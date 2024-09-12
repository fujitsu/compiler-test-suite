module type_mod_1_8
integer,parameter:: res_ikind = 1
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 1
end module
module type_mod_2_8
integer,parameter:: res_ikind = 2
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 2
end module
module type_mod_4_8
integer,parameter:: res_ikind = 4
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 4
end module
module type_mod_8_8
integer,parameter:: res_ikind = 8
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 8
end module

module mod_1_8
use type_mod_1_8
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG), allocatable :: st

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    complex(kind=arg_ckind):: arg
    my_fun = arg + (3, 3)
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_1_8
      complex(kind=arg_ckind):: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (st%a(i) .ne. ff(st%b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_1_8
    integer*8 i
    allocate(st)
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_8
use type_mod_2_8
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG), allocatable :: st

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    complex(kind=arg_ckind):: arg
    my_fun = arg + (3, 3)
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_2_8
      complex(kind=arg_ckind):: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (st%a(i) .ne. ff(st%b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_2_8
    integer*8 i
    allocate(st)
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_8
use type_mod_4_8
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG), allocatable :: st

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    complex(kind=arg_ckind):: arg
    my_fun = arg + (3, 3)
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_4_8
      complex(kind=arg_ckind):: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (st%a(i) .ne. ff(st%b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_4_8
    integer*8 i
    allocate(st)
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_8
use type_mod_8_8
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG), allocatable :: st

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    complex(kind=arg_ckind):: arg
    my_fun = arg + (3, 3)
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_8_8
      complex(kind=arg_ckind):: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (st%a(i) .ne. ff(st%b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_8_8
    integer*8 i
    allocate(st)
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

use mod_1_8
use mod_2_8
use mod_4_8
use mod_8_8
call test_1_8
call test_2_8
call test_4_8
call test_8_8
print *, "PASS"
end

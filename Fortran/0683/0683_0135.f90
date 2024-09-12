module type_mod_1_4
integer,parameter:: res_ikind = 1
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 1
end module
module type_mod_2_4
integer,parameter:: res_ikind = 2
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 2
end module
module type_mod_4_4
integer,parameter:: res_ikind = 4
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 4
end module
module type_mod_8_4
integer,parameter:: res_ikind = 8
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 8
end module

module mod_1_4
use type_mod_1_4
implicit none
integer,parameter:: n = 10003

integer(kind=res_ikind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    real(kind=arg_rkind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_1_4
      real(kind=arg_rkind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_1_4
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_4
use type_mod_2_4
implicit none
integer,parameter:: n = 10003

integer(kind=res_ikind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    real(kind=arg_rkind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_2_4
      real(kind=arg_rkind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_2_4
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_4
use type_mod_4_4
implicit none
integer,parameter:: n = 10003

integer(kind=res_ikind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    real(kind=arg_rkind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_4_4
      real(kind=arg_rkind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_4_4
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_4
use type_mod_8_4
implicit none
integer,parameter:: n = 10003

integer(kind=res_ikind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  integer(kind=res_ikind) function my_fun(arg)
    implicit none
    !$omp declare simd
    real(kind=arg_rkind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_8_4
      real(kind=arg_rkind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_8_4
    integer*8 i
    do i=1,N
       b(i) = i
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

use mod_1_4
use mod_2_4
use mod_4_4
use mod_8_4
call test_1_4
call test_2_4
call test_4_4
call test_8_4
print *, "PASS"
end

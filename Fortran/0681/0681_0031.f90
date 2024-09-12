module type_mod_1_1
integer,parameter:: res_rkind = 16
integer,parameter:: arg_ikind = 1
integer,parameter:: mask_kind = 1
end module
module type_mod_2_1
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
integer,parameter:: arg_ikind = 1
integer,parameter:: mask_kind = 2
end module
module type_mod_4_1
integer,parameter:: res_rkind = 4
integer,parameter:: arg_ikind = 1
integer,parameter:: mask_kind = 4
end module
module type_mod_8_1
integer,parameter:: res_rkind = 8
integer,parameter:: arg_ikind = 1
integer,parameter:: mask_kind = 8
end module

module mod_1_1
use type_mod_1_1
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
integer(kind=arg_ikind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*4 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i)+0_1)
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg)
      use type_mod_1_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*4 i
    do i=1,N
       if (a(i) .ne. ff(b(i)+0_1)) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_1_1
    integer*4 i
    do i=1,N
       b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_1
use type_mod_2_1
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
integer(kind=arg_ikind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*4 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i)+0_1)
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg)
      use type_mod_2_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*4 i
    do i=1,N
       if (a(i) .ne. ff(b(i)+0_1)) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_2_1
    integer*4 i
    do i=1,N
       b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_1
use type_mod_4_1
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
integer(kind=arg_ikind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*4 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i)+0_1)
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg)
      use type_mod_4_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*4 i
    do i=1,N
       if (a(i) .ne. ff(b(i)+0_1)) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_4_1
    integer*4 i
    do i=1,N
       b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_1
use type_mod_8_1
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
integer(kind=arg_ikind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd
    integer(kind=arg_ikind):: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*4 i
    !$omp simd
    do i=1,N
       a(i) = my_fun(b(i)+0_1)
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg)
      use type_mod_8_1
      integer(kind=arg_ikind):: arg
      end function ff
    end interface
    integer*4 i
    do i=1,N
       if (a(i) .ne. ff(b(i)+0_1)) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_8_1
    integer*4 i
    do i=1,N
       b(i) = i
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
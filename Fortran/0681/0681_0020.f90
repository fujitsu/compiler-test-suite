module type_mod_1_2
integer,parameter:: res_ikind = 1
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 2
end module
module type_mod_2_2
integer,parameter:: res_ikind = 2
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 2
end module
module type_mod_4_2
integer,parameter:: res_ikind = 4
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 2
end module
module type_mod_8_2
integer,parameter:: res_ikind = 8
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 2
end module

module mod_1_2
use type_mod_1_2
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG)st

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
       if (st%m(i).eq.0) st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_1_2
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

  subroutine test_1_2
    integer*8 i
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_2
use type_mod_2_2
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG)st

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
       if (st%m(i).eq.0) st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_2_2
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

  subroutine test_2_2
    integer*8 i
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_2
use type_mod_4_2
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG)st

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
       if (st%m(i).eq.0) st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_4_2
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

  subroutine test_4_2
    integer*8 i
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_2
use type_mod_8_2
implicit none
integer,parameter:: n = 10003

type TAG
integer(kind=res_ikind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)
end type
type(TAG)st

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
       if (st%m(i).eq.0) st%a(i) = my_fun(st%b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      integer(kind=res_ikind) function ff(arg)
      use type_mod_8_2
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

  subroutine test_8_2
    integer*8 i
    do i=1,N
       st%b(i) = cmplx(i , -i)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

use mod_1_2
use mod_2_2
use mod_4_2
use mod_8_2
call test_1_2
call test_2_2
call test_4_2
call test_8_2
print *, "PASS"
end

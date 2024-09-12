module type_mod_1_1
integer,parameter:: res_rkind = 16
integer,parameter:: arg_ckind = 16
integer,parameter:: mask_kind = 1
end module
module type_mod_2_1
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
integer,parameter:: arg_ckind = 16
integer,parameter:: mask_kind = 2
end module
module type_mod_4_1
integer,parameter:: res_rkind = 4
integer,parameter:: arg_ckind = 16
integer,parameter:: mask_kind = 4
end module
module type_mod_8_1
integer,parameter:: res_rkind = 8
integer,parameter:: arg_ckind = 16
integer,parameter:: mask_kind = 8
end module

module mod_1_1
use type_mod_1_1
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_1_1
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_1_1
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_1
use type_mod_2_1
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_2_1
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_2_1
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_1
use type_mod_4_1
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_4_1
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_4_1
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_1
use type_mod_8_1
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_8_1
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_8_1
    integer*8 i
    do i=1,N
       b(i) = i
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module type_mod_1_2
integer,parameter:: res_rkind = 16
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 1
end module
module type_mod_2_2
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 2
end module
module type_mod_4_2
integer,parameter:: res_rkind = 4
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 4
end module
module type_mod_8_2
integer,parameter:: res_rkind = 8
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_ckind = selected_real_kind(3)
#else
integer,parameter:: arg_ckind = 4
#endif
integer,parameter:: mask_kind = 8
end module

module mod_1_2
use type_mod_1_2
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_1_2
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_1_2
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_2
use type_mod_2_2
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_2_2
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_2_2
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_2
use type_mod_4_2
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_4_2
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_4_2
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_2
use type_mod_8_2
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_8_2
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_8_2
    integer*8 i
    do i=1,N
       b(i) = i
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module type_mod_1_4
integer,parameter:: res_rkind = 16
integer,parameter:: arg_ckind = 4
integer,parameter:: mask_kind = 1
end module
module type_mod_2_4
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
integer,parameter:: arg_ckind = 4
integer,parameter:: mask_kind = 2
end module
module type_mod_4_4
integer,parameter:: res_rkind = 4
integer,parameter:: arg_ckind = 4
integer,parameter:: mask_kind = 4
end module
module type_mod_8_4
integer,parameter:: res_rkind = 8
integer,parameter:: arg_ckind = 4
integer,parameter:: mask_kind = 8
end module

module mod_1_4
use type_mod_1_4
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_1_4
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_1_4
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_4
use type_mod_2_4
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_2_4
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_2_4
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_4
use type_mod_4_4
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_4_4
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_4_4
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_4
use type_mod_8_4
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_8_4
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
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

module type_mod_1_8
integer,parameter:: res_rkind = 16
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 1
end module
module type_mod_2_8
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 2
end module
module type_mod_4_8
integer,parameter:: res_rkind = 4
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 4
end module
module type_mod_8_8
integer,parameter:: res_rkind = 8
integer,parameter:: arg_ckind = 8
integer,parameter:: mask_kind = 8
end module

module mod_1_8
use type_mod_1_8
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_1_8
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_1_8
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_2_8
use type_mod_2_8
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_2_8
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_2_8
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_4_8
use type_mod_4_8
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_4_8
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_4_8
    integer*8 i
    do i=1,N
       b(i) = cmplx(i , -i)
       m(i) = mod(i, 3)
    end do
    call foo()
    call check(my_fun)
  end subroutine

end module

module mod_8_8
use type_mod_8_8
implicit none
integer,parameter:: n = 10003

complex(kind=res_rkind) a(N)
complex(kind=arg_ckind) b(N)
integer(kind=mask_kind) m(N)

contains

  complex(kind=res_rkind) function my_fun(arg)
    implicit none
    !$omp declare simd inbranch
    complex(kind=arg_ckind),value:: arg
    my_fun = arg + 3
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      complex(kind=res_rkind) function ff(arg)
      use type_mod_8_8
      complex(kind=arg_ckind),value:: arg
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i))) then
         stop
       endif
    end do
  end subroutine check

  subroutine test_8_8
    integer*8 i
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
use mod_1_2
use mod_2_2
use mod_4_2
use mod_8_2
use mod_1_4
use mod_2_4
use mod_4_4
use mod_8_4
use mod_1_8
use mod_2_8
use mod_4_8
use mod_8_8
call test_1_1
call test_2_1
call test_4_1
call test_8_1
call test_1_2
call test_2_2
call test_4_2
call test_8_2
call test_1_4
call test_2_4
call test_4_4
call test_8_4
call test_1_8
call test_2_8
call test_4_8
call test_8_8
print *, "PASS"
end
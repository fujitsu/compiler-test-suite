module type_mod_1_1
integer,parameter:: res_rkind = 16
integer,parameter:: arg_rkind = 16
integer,parameter:: mask_kind = 1
end module
module type_mod_2_1
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
integer,parameter:: arg_rkind = 16
integer,parameter:: mask_kind = 2
end module
module type_mod_4_1
integer,parameter:: res_rkind = 4
integer,parameter:: arg_rkind = 16
integer,parameter:: mask_kind = 4
end module
module type_mod_8_1
integer,parameter:: res_rkind = 8
integer,parameter:: arg_rkind = 16
integer,parameter:: mask_kind = 8
end module

module mod_1_1
use type_mod_1_1
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_1_1
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_2_1
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_4_1
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_8_1
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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
integer,parameter:: arg_rkind = selected_real_kind(3)
#else
integer,parameter:: arg_rkind = 4
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
integer,parameter:: arg_rkind = selected_real_kind(3)
#else
integer,parameter:: arg_rkind = 4
#endif
integer,parameter:: mask_kind = 2
end module
module type_mod_4_2
integer,parameter:: res_rkind = 4
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_rkind = selected_real_kind(3)
#else
integer,parameter:: arg_rkind = 4
#endif
integer,parameter:: mask_kind = 4
end module
module type_mod_8_2
integer,parameter:: res_rkind = 8
#ifdef __ARM_FEATURE_SVE
integer,parameter:: arg_rkind = selected_real_kind(3)
#else
integer,parameter:: arg_rkind = 4
#endif
integer,parameter:: mask_kind = 8
end module

module mod_1_2
use type_mod_1_2
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_1_2
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_2_2
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_4_2
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_8_2
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 1
end module
module type_mod_2_4
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 2
end module
module type_mod_4_4
integer,parameter:: res_rkind = 4
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 4
end module
module type_mod_8_4
integer,parameter:: res_rkind = 8
integer,parameter:: arg_rkind = 4
integer,parameter:: mask_kind = 8
end module

module mod_1_4
use type_mod_1_4
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_1_4
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_2_4
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
    real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_4_4
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_8_4
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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
integer,parameter:: arg_rkind = 8
integer,parameter:: mask_kind = 1
end module
module type_mod_2_8
#ifdef __ARM_FEATURE_SVE
integer,parameter:: res_rkind = selected_real_kind(3)
#else
integer,parameter:: res_rkind = 4
#endif
integer,parameter:: arg_rkind = 8
integer,parameter:: mask_kind = 2
end module
module type_mod_4_8
integer,parameter:: res_rkind = 4
integer,parameter:: arg_rkind = 8
integer,parameter:: mask_kind = 4
end module
module type_mod_8_8
integer,parameter:: res_rkind = 8
integer,parameter:: arg_rkind = 8
integer,parameter:: mask_kind = 8
end module

module mod_1_8
use type_mod_1_8
implicit none
integer,parameter:: n = 10003

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_1_8
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_2_8
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_4_8
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

real(kind=res_rkind) a(N)
real(kind=arg_rkind) b(N)
integer(kind=mask_kind) m(N)

contains

  real(kind=res_rkind) function my_fun(arg, arg2)
    implicit none
    !$omp declare simd inbranch
    real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
    my_fun = arg + 3 + arg2
  end function my_fun

  subroutine foo()
    integer*8 i
    !$omp simd
    do i=1,N
       if (m(i) .ne. 0) a(i) = my_fun(b(i), a(i))
    end do
  end subroutine

  subroutine check(ff)
    interface
      real(kind=res_rkind) function ff(arg, arg2)
      use type_mod_8_8
      real(kind=arg_rkind):: arg
      real(kind=res_rkind),value :: arg2
      end function ff
    end interface
    integer*8 i
    do i=1,N
       if (m(i) .eq. 0) then
         if (a(i) .ne. 0) stop
         cycle
       endif
       if (a(i) .ne. ff(b(i), real(0, kind=res_rkind))) then
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

module mod
type  :: ty_1                             ! 1)
 contains
  generic           :: gen_name => proc_1 ! 3) 4) 11)
  procedure, nopass :: proc_1             ! 2) 8) 15)
end type
type, extends(ty_1) :: ty_2               ! 5) 6)
 contains
  generic           :: gen_name => proc_2 ! 9) 10) 11)
  procedure, nopass :: proc_2             ! 7) 8) 
end type
type, extends(ty_2) :: ty_3               ! 12) 13)
 contains
  procedure, nopass :: proc_1=>proc_3             ! 14) 15)
end type
integer::nn
 contains
 subroutine proc_1()
nn=1
 end subroutine
 subroutine proc_2(dummy_arg)             ! 18)
  real, intent(in) :: dummy_arg
  write(20,*) dummy_arg
nn=2
 end subroutine
 subroutine proc_3()
nn=3
 end subroutine
end module

program main
use mod
type(ty_1) :: var1                        ! 16)
type(ty_2) :: var2                        ! 16)
type(ty_3) :: var3                        ! 16)
call var1%gen_name(   )                    ! 17) 18)
if (nn/=1)print *,1001
call var1%proc_1  (   )                    ! 17) 18)
if (nn/=1)print *,1002

call var2%gen_name(   )                    ! 17) 18)
if (nn/=1)print *,10011
call var2%gen_name(1.0)                    ! 17) 18)
if (nn/=2)print *,10012
call var2%proc_1   (   )                    ! 17) 18)
if (nn/=1)print *,10013
call var2%proc_2   (1.0)                    ! 17) 18)
if (nn/=2)print *,10014

call var3%gen_name(   )                    ! 17) 18)
if (nn/=3)print *,10011
call var3%gen_name(1.0)                    ! 17) 18)
if (nn/=2)print *,10012
call var3%proc_1   (   )                    ! 17) 18)
if (nn/=3)print *,10013
call var3%proc_2   (1.0)                    ! 17) 18)
if (nn/=2)print *,10014


print *,'sngg795n : pass'
end program

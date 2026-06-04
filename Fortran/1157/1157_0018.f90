module mod
type  :: ty_1                             ! 1)
 contains
  procedure, nopass :: proc_1             ! 2) 8) 15)
  generic,private   :: gen_name => proc_1 ! 3) 4) 11)
end type
type, extends(ty_1) :: ty_2               ! 5) 6)
 contains
  procedure, nopass :: proc_2             ! 7) 8) 
  generic,private   :: gen_name => proc_2 ! 9) 10) 11)
end type
type, extends(ty_2) :: ty_3               ! 12) 13)
 contains
  procedure, nopass :: proc_1             ! 14) 15)
end type
type(ty_3) :: var                         ! 16)
 contains
 subroutine proc_1()
  write(1,*) 90
 end subroutine
 subroutine proc_2(dummy_arg)             ! 18)
  real, intent(in) :: dummy_arg
  write(1,*) dummy_arg
 end subroutine
 subroutine w
call var%gen_name(1.0)                    ! 17) 18)
call var%gen_name(   )                    ! 17) 18)
 end subroutine
end module

program main
use mod
call w
!call var%gen_name(1.0)                    ! 17) 18)
!call var%gen_name(   )                    ! 17) 18)
rewind 1
read(1,*) a;if(a/=1.)print *,9001
read(1,*) n;if(n/=90)print *,9002

print *,'sngg729n : pass'
end program

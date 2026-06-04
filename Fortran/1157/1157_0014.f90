module mod
type  :: ty_1                             ! 1)
 contains
  procedure, nopass :: proc_1             ! 2) 8) 15)
  generic           :: gen_name => proc_1 ! 3) 4) 11)
end type
type, extends(ty_1) :: ty_2               ! 5) 6)
 contains
  procedure, nopass :: proc_2             ! 7) 8) 
  generic           :: gen_name => proc_2 ! 9) 10) 11)
end type
type, extends(ty_2) :: ty_3               ! 12) 13)
 contains
  procedure, nopass :: proc_1             ! 14) 15)
  generic       :: gen_name => proc_1 ! 16)
end type
 contains
 subroutine proc_1()
  write(1,*) 1
 end subroutine
 subroutine proc_2(dummy_arg)             ! 18)
  real, intent(in) :: dummy_arg
  write(1,*) dummy_arg
 end subroutine
 subroutine proc_3(dummy_arg)             ! 18)
  integer, intent(in) :: dummy_arg
  write(1,*) dummy_arg
 end subroutine
end module

program main
use mod
type(ty_3) :: var                      
call var%gen_name(   )                    ! 16) 17) 18)
call var%gen_name(2.0)                    ! 16) 17) 18)
!call var%gen_name(3  )                    ! 16) 17) 18)


rewind 1
read(1,*) nn;if (nn/=1) print *,1001
read(1,*) an;if (an/=2) print *,1002
!read(1,*) nn;if (nn/=3) print *,1003
read(1,*,end=9) nn
print *,1004
9 continue
print *,'sngg723n : pass'
end program

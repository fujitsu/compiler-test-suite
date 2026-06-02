module mod
type ::ty0
 contains
  procedure, nopass :: p0=>proc_0             ! 2) 8) 15)
  generic           :: gen_name => p0 ! 3) 4) 11)
end type
type, extends(ty0 ) :: ty_21              ! 12) 13)
 contains
  procedure, nopass :: p21=>proc_21            ! 14) 15)
  generic           :: gen_name => p21 ! 9) 10) 11)
end type
type, extends(ty_21) :: ty_3               ! 12) 13)
 contains
  procedure, nopass :: p0=>proc_3             ! 14) 15)
end type
 contains
 subroutine proc_44(h)
  complex(8) ::h
write(13,*)88
 end subroutine
 subroutine proc_0(k)
write(13,*)0
 end subroutine
 subroutine proc_21(c)
  character c
write(13,*)21
 end subroutine
 subroutine proc_3(k)
write(13,*)3
 end subroutine
 subroutine proc_42(c)
  character c
write(13,*)44
 end subroutine
end module
module mm
use mod
type, extends(ty_3) :: ty_4               ! 12) 13)
 contains
  generic           ::gen_name=>p44
  procedure, nopass :: p21=>proc_42             ! 14) 15)
  procedure, nopass :: p44=>proc_44             ! 14) 15)
end type
type, extends(ty_3) :: ty_44               ! 12) 13)
 contains
  procedure, nopass :: p21=>proc_42             ! 14) 15)
  procedure, nopass :: p44=>proc_44             ! 14) 15)
  generic           ::gen_name=>p44
end type
type, extends(ty_3) :: ty_45               ! 12) 13)
 contains
  procedure, nopass :: p21=>proc_42             ! 14) 15)
  procedure, nopass :: p44=>proc_44             ! 14) 15)
end type
end


program main
use mm
print *,'sngg782n : pass'
end program

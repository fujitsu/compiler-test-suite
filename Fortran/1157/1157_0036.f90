module m0
type ::ty0
 contains
  procedure, nopass :: p0=>proc_0             ! 2) 8) 15)
  generic           :: gen_name => p0 ! 3) 4) 11)
end type
contains
 subroutine proc_0(k)
write(1,*)0
 end subroutine
end
module a1
use m0
type, extends(ty0 ) :: ty_21              ! 12) 13)
 contains
  procedure, nopass :: p21=>proc_21            ! 14) 15)
  generic           :: gen_name => p21 ! 9) 10) 11)
end type
contains
 subroutine proc_21(c)
  character c
write(1,*)21
 end subroutine
end
module b3
use a1
type, extends(ty_21) :: ty_3               ! 12) 13)
 contains
  procedure, nopass :: p0=>proc_3             ! 14) 15)
end type
contains
 subroutine proc_3(k)
write(1,*)3
 end subroutine
end
module c4
use b3
type, extends(ty_3) :: ty_4               ! 12) 13)
 contains
  generic           ::gen_name=>p44
  procedure, nopass :: p44=>proc_44             ! 14) 15)
  procedure, nopass :: p21=>proc_42             ! 14) 15)
end type
 contains
 subroutine proc_44(h)
  complex(8) ::h
write(1,*)88
 end subroutine
 subroutine proc_42(c)
  character c
write(1,*)44
 end subroutine
end module

program main
use c4  
!type(ty_3) :: var                         ! 16)
!type(ty_4) :: v                         ! 16)
!call var%gen_name((1,1))                    ! 17) 18)
!call var%gen_name(1)                    ! 17) 18)
!call var%gen_name()                    ! 17) 18)
!call var%gen_name(1.0)                    ! 17) 18)
!call var%gen_name('1')                    ! 17) 18)
!
!call v%gen_name((1,1))                    ! 17) 18)
!call v%gen_name(1)                    ! 17) 18)
!call v%gen_name()                    ! 17) 18)
!call v%gen_name(1.0)                    ! 17) 18)
!call v%gen_name('1')                    ! 17) 18)
!call v%gen_name((1._8,1))                    ! 17) 18)
!rewind 1
!read(1,*) n;if (n/=9) print *,10010
!read(1,*) n;if (n/=3) print *,10011
!read(1,*) n;if (n/=1) print *,10012
!read(1,*) n;if (n/=2) print *,10013
!read(1,*) n;if (n/=21) print *,10014
!
!read(1,*) n;if (n/=99) print *,100109
!read(1,*) n;if (n/=4) print *,100111
!read(1,*) n;if (n/=1) print *,100122
!read(1,*) n;if (n/=2) print *,100133
!read(1,*) n;if (n/=44) print *,100144
!read(1,*) n;if (n/=88) print *,100148
!read(1,*,end=9) n;if (n/=21) print *,100155
!9continue
!
print *,'sngg747n : pass'
end program

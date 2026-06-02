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
type, extends(ty_3) :: ty_4               ! 12) 13)
 contains
  procedure, nopass :: p44=>proc_44             ! 14) 15)
  procedure, nopass :: p21=>proc_42             ! 14) 15)
  !!!generic           ::gen_name=>p44

end type
 contains
 subroutine proc_44(h)
  complex ::h
write(1,*)88
 end subroutine
 subroutine proc_0(k)
write(1,*)0
 end subroutine
 subroutine proc_21(c)
  character c
write(1,*)21
 end subroutine
 subroutine proc_3(k)
write(1,*)3
 end subroutine
 subroutine proc_42(c)
  character c
write(1,*)44
 end subroutine
end module

program main
use mod
type(ty_3) :: var                         ! 16)
type(ty_4) :: v                         ! 16)
call var%gen_name(1)                    ! 17) 18)
call var%gen_name('1')                    ! 17) 18)

!!call v%gen_name((1,1))                    ! 17) 18)
call v%gen_name(1)                    ! 17) 18)
call v%gen_name('1')                    ! 17) 18)

call var%p0      (1)                    ! 17) 18)
call var%p21     ('1')                    ! 17) 18)

call v%p44     ((1,1))                    ! 17) 18)
call v%p0      (1)                    ! 17) 18)
call v%p21     ('1')                    ! 17) 18)
rewind 1
read(1,*) n;if (n/=3) print *,10011
read(1,*) n;if (n/=21) print *,10014
!!read(1,*) n;if (n/=88) print *,10017
read(1,*) n;if (n/=3) print *,10012
read(1,*) n;if (n/=44) print *,10013

read(1,*) n;if (n/=3) print *,100111
read(1,*) n;if (n/=21) print *,100122
read(1,*) n;if (n/=88) print *,100148
read(1,*) n;if (n/=3) print *,100133
read(1,*) n;if (n/=44) print *,100144
read(1,*,end=9) n;if (n/=21) print *,100155
9continue

print *,'sngg756n : pass'
end program

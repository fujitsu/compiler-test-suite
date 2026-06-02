module m0 
type ty
 contains
  procedure, nopass         :: p00=>proc_00             ! 2) 8) 15)
  generic           :: gen_name => p00 ! 3) 4) 11)
end type
contains
 subroutine proc_00(h)
  complex ::h
write(11,*)9
 end subroutine
end
module m1 
use m0
type ,extends(ty)::ty0
 contains
  procedure, nopass :: p0=>proc_0             ! 2) 8) 15)
  generic           :: gen_name => p0 ! 3) 4) 11)
end type
contains
 subroutine proc_0(k)
write(11,*)0
 end subroutine
end
module m2 
use m1
type,extends(ty0) :: ty_1                             ! 1)
 contains
  procedure, nopass,private :: p1=>proc_1             ! 2) 8) 15)
  generic           :: gen_name => p1 ! 3) 4) 11)
end type
contains
 subroutine proc_1()
write(11,*)1
 end subroutine
end
module m3 
use m2
type, extends(ty_1) :: ty_2               ! 5) 6)
 contains
  procedure, nopass,private :: p2=>proc_2             ! 7) 8) 
  generic           :: gen_name => p2 ! 9) 10) 11)
end type
contains
 subroutine proc_2(dummy_arg)             ! 18)
  real, intent(in) :: dummy_arg
  write(12,*) dummy_arg
write(11,*)2
 end subroutine
end
module m4 
use m3
type, extends(ty_2) :: ty_21              ! 12) 13)
 contains
  procedure, nopass :: p21=>proc_21            ! 14) 15)
  generic           :: gen_name => p21 ! 9) 10) 11)
end type
contains
 subroutine proc_21(c)
  character c
write(11,*)21
 end subroutine
end
module m5 
use m4
type, extends(ty_21) :: ty_3               ! 12) 13)
 contains
  procedure, nopass :: p0=>proc_3             ! 14) 15)
end type
 contains
 subroutine proc_3(k)
write(11,*)3
 end subroutine
end
module m6 
use m5
type, extends(ty_3) :: ty_4               ! 12) 13)
 contains
  generic           ::gen_name=>p44
  generic           ::gen_name=>p45
  procedure, nopass,private :: p44=>proc_44             ! 14) 15)
  procedure, nopass         :: p0=>proc_41             ! 14) 15)
  procedure, nopass         :: p21=>proc_42             ! 14) 15)
  procedure, nopass         :: p00=>proc_43             ! 14) 15)
  procedure, nopass,private :: p45=>proc_45             ! 14) 15)
end type
 contains
 subroutine proc_45(h)
  complex(16) ::h
write(11,*)80
 end subroutine
 subroutine proc_44(h)
  complex(8) ::h
write(11,*)88
 end subroutine
 subroutine proc_41(k)
write(11,*)4
 end subroutine
 subroutine proc_42(c)
  character c
write(11,*)44
 end subroutine
 subroutine proc_43(h)
  complex ::h
write(11,*)99
 end subroutine
end module

program main
use m6
type(ty_3) :: var                         ! 16)
type(ty_4) :: v                         ! 16)
call var%gen_name((1,1))                    ! 17) 18)
call var%gen_name(1)                    ! 17) 18)
call var%gen_name()                    ! 17) 18)
call var%gen_name(1.0)                    ! 17) 18)
call var%gen_name('1')                    ! 17) 18)

call v%gen_name((1,1))                    ! 17) 18)
call v%gen_name(1)                    ! 17) 18)
call v%gen_name()                    ! 17) 18)
call v%gen_name(1.0)                    ! 17) 18)
call v%gen_name('1')                    ! 17) 18)
call v%gen_name((1._8,1))                    ! 17) 18)
call v%gen_name((1._16,1))                    ! 17) 18)

call var%p00     ((1,1))                    ! 17) 18)
call var%p0      (1)                    ! 17) 18)
!call var%p1      ()                    ! 17) 18)
!call var%p2      (1.0)                    ! 17) 18)
call var%p21     ('1')                    ! 17) 18)

call v%p00     ((1,1))                    ! 17) 18)
call v%p0      (1)                    ! 17) 18)
!call v%p1      ()                    ! 17) 18)
!call v%p2     (1.0)                    ! 17) 18)
call v%p21      ('1')                    ! 17) 18)
!call v%p44     ((1._8,1))                    ! 17) 18)
!call v%p45     ((1._16,1))                    ! 17) 18)
rewind 11
read(11,*) n;if (n/=9) print *,10010
read(11,*) n;if (n/=3) print *,10011
read(11,*) n;if (n/=1) print *,10012
read(11,*) n;if (n/=2) print *,10013
read(11,*) n;if (n/=21) print *,10014

read(11,*) n;if (n/=99) print *,100109
read(11,*) n;if (n/=4) print *,100111
read(11,*) n;if (n/=1) print *,100122
read(11,*) n;if (n/=2) print *,100133
read(11,*) n;if (n/=44) print *,100144
read(11,*) n;if (n/=88) print *,100148
read(11,*) n;if (n/=80) print *,10010

read(11,*) n;if (n/=9) print *,10010
read(11,*) n;if (n/=3) print *,10011
!read(11,*) n;if (n/=1) print *,10012
!read(11,*) n;if (n/=2) print *,10013
read(11,*) n;if (n/=21) print *,10014

read(11,*) n;if (n/=99) print *,1001091
read(11,*) n;if (n/=4) print *,100111
!read(11,*) n;if (n/=1) print *,100122
!read(11,*) n;if (n/=2) print *,100133
read(11,*) n;if (n/=44) print *,100144
!read(11,*) n;if (n/=88) print *,100148
!read(11,*) n;if (n/=80) print *,10010

read(11,*,end=9) n;if (n/=21) print *,100155
9 continue

print *,'sngg791n : pass'
end program

module m0 
type ty
 contains
  procedure, private,nopass :: p00=>proc_00             ! 2) 8) 15)
  generic           :: gen_name => p00 ! 3) 4) 11)
end type
contains
 subroutine proc_00(h)
  complex ::h
write(3,*)9
 end subroutine
end
module m1 
use m0
type ,extends(ty)::ty0
 contains
  procedure, private,nopass :: p0=>proc_0             ! 2) 8) 15)
  generic           :: gen_name => p0 ! 3) 4) 11)
end type
contains
 subroutine proc_0(k)
write(3,*)0
 end subroutine
end
module m2 
use m1
type,extends(ty0) :: ty_1                             ! 1)
 contains
  procedure, private,nopass :: p1=>proc_1             ! 2) 8) 15)
  generic           :: gen_name => p1 ! 3) 4) 11)
end type
contains
 subroutine proc_1()
write(3,*)1
 end subroutine
end
module m3 
use m2
type, extends(ty_1) :: ty_2               ! 5) 6)
 contains
  procedure, private,nopass :: p2=>proc_2             ! 7) 8) 
  generic           :: gen_name => p2 ! 9) 10) 11)
end type
contains
 subroutine proc_2(dummy_arg)             ! 18)
  real, intent(in) :: dummy_arg
  write(4,*) dummy_arg
write(3,*)2
 end subroutine
end
module m4 
use m3
type, extends(ty_2) :: ty_21              ! 12) 13)
 contains
  procedure, private,nopass :: p21=>proc_21            ! 14) 15)
  generic           :: gen_name => p21 ! 9) 10) 11)
end type
contains
 subroutine proc_21(c)
  character c
write(3,*)21
 end subroutine
end
module m5 
use m4
type, extends(ty_21) :: ty_3               ! 12) 13)
 contains
  procedure, private,nopass :: p0=>proc_3             ! 14) 15)
end type
 contains
 subroutine proc_3(k)
write(3,*)3
 end subroutine
end
module m6 
use m5
type, extends(ty_3) :: ty_4               ! 12) 13)
 contains
  generic           ::gen_name=>p44
  generic           ::gen_name=>p45
  procedure, private,nopass :: p44=>proc_44             ! 14) 15)
  procedure, private,nopass :: p0=>proc_41             ! 14) 15)
  procedure, private,nopass :: p21=>proc_42             ! 14) 15)
  procedure, private,nopass :: p00=>proc_43             ! 14) 15)
  procedure, private,nopass :: p45=>proc_45             ! 14) 15)
end type
 contains
 subroutine proc_45(h)
  complex(16) ::h
write(3,*)80
 end subroutine
 subroutine proc_44(h)
  complex(8) ::h
write(3,*)88
 end subroutine
 subroutine proc_41(k)
write(3,*)4
 end subroutine
 subroutine proc_42(c)
  character c
write(3,*)44
 end subroutine
 subroutine proc_43(h)
  complex ::h
write(3,*)99
 end subroutine
end module

program main
use m6
type(ty_3) :: var                         ! 16)
call var%gen_name(1)                    ! 17) 18)
rewind 3
read(3,*) n;if (n/=0) print *,10011

read(3,*,end=9) n;if (n/=21) print *,100155
9continue

print *,'sngg788n : pass'
end program

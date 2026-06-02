module m0 
type ty
 contains
  procedure, private,nopass :: p00=>proc_00             ! 2) 8) 15)
  generic           :: gen_name => p00 ! 3) 4) 11)
end type
contains
 subroutine proc_00(h)
  complex ::h
write(7,*)9
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
write(7,*)0
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
write(7,*)1
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
  write(8,*) dummy_arg
write(7,*)2
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
write(7,*)21
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
write(7,*)3
 end subroutine
end

program main
use m5
type(ty_3) :: var                         ! 16)
call var%gen_name(1)                    ! 17) 18)
rewind 7
read(7,*) n;if (n/=0) print *,10011

read(7,*,end=9) n;if (n/=21) print *,100155
9continue

print *,'sngg789n : pass'
end program

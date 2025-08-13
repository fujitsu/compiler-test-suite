module mod01
type base
  integer::x1=2
  contains
   procedure,nopass::prc
end type
contains
subroutine prc()
  write(6,*)100
end subroutine
end module

module mod02
type base
  integer::x1=1
  contains
   procedure,nopass::prc
end type
type, extends(base)::ext
end type
private::base
public::ext
contains
subroutine prc()
  write(24,*)300
end subroutine
end module

program main
use mod01
use mod02

type(ext)::var
call var%prc()
if (var%x1/=1) print *,7001

rewind 24
read(24,*) k
if (k/=300) print *,1100
read(24,*,end=100) k
print *,1000
100 continue
print *,'pass'
end program main

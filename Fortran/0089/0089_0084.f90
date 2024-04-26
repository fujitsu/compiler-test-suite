module mod01
type base
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
  contains
   procedure,nopass::prc 
end type
type, extends(base)::ext  
end type
public::ext
private::base
contains
subroutine prc()
  write(3,*)300
end subroutine
end module

program main
use mod02
use mod01

type(ext)::var           
call var%prc()

rewind 3
read(3,*) k
if (k/=300) print *,1100
read(3,*,end=100) k
print *,1000
100 continue
print *,'pass'
end program

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

module nod
type base
  contains
   procedure,nopass::prc
end type
type, extends(base)::ext
end type
contains
subroutine prc()
  write(3,*)300
end subroutine
end module

use mod01
use nod, only:ext

type(ext)::var
call var%prc()

rewind 3
read(3,*) k
if (k/=300) print *,1100
read(3,*,end=100) k
print *,1000
100 continue
print *,'pass'
end

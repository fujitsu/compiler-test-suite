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
module xmm
contains
  subroutine xmms(x,y)
    use mod01
    type(base)::x
type ext
end type
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use nod
    type(base)::x
    type(ext  )::y
   end
end
use xmm
use xmm2

use mod01, only:base
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

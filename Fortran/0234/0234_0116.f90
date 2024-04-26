module mod01
type base
  contains
   procedure,nopass::prc1
end type
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
contains
subroutine prc1()
  write(6,*)100
end subroutine
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module nod
type base
  contains
   procedure,nopass::prc1
end type
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
contains
subroutine prc1()
  write(3,*)300
end subroutine
subroutine cproc1()
  write(6,*)400
end subroutine
end module
module xmm
contains
  subroutine xmms(x,y)
    use mod01
    type(base)::x
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

type(ext)::tc1
call tc1%prc1()
rewind 3
read(3,*) k
if (k/=300) print *,1100
read(3,*,end=100) k
print *,1000
100 continue
print *,'pass'
end

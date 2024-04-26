module mm
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type

contains
subroutine prc1()
  write(2,*)100
end subroutine
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mm2
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
subroutine prc1()
  write(6,*)300
end subroutine
subroutine cproc1()
  write(1,*)400
end subroutine
end module
module xmm
contains
  subroutine xmms(x,y)
    use mm
    type(base)::x
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use mm2
    type(base)::x
    type(ext  )::y
   end
end
use xmm
use xmm2

use mm, only:base
use mm2, only:ext

type(base)::tc0
type(ext)::tc1
call tc0%prc1()
call tc1%prc1()
rewind 1
read(1,*) k
if (k/=400) print *,200
rewind 2
read(2,*) k
if (k/=100) print *,100
read(2,*,end=100) k
print *,1000
100 continue
print *,'pass'
end

module mm
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::e
  contains
   procedure,nopass::prc1=>cproc1
end type

contains
subroutine prc1()
  write(6,*)100
end subroutine
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mm2
type b
  contains
   procedure,nopass::prc1
end type

type, extends(b)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
subroutine prc1()
  write(6,*)300
end subroutine
subroutine cproc1()
  write(35,*)400
end subroutine
end module
module m4
contains
subroutine s(v)
use mm,ee=>e
use mm2, e=>ext

type(e)::v
end
end

use mm,ee=>e
use mm2, e=>ext
use m4

type(e)::tc1
call tc1%prc1()
rewind 35
read(35,*) k
if (k/=400) print *,200
print *,'pass'
end

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
  write(38,*)400
end subroutine
end module
module m4
contains
subroutine s(v)
use mm, only:base
use mm2, only:e=>ext

type(e)::v
end
end

use mm, only:base
use mm2, only:e=>ext
use m4

type(e)::tc1
call tc1%prc1()
rewind 38
read(38,*) k
if (k/=400) print *,200
print *,'pass'
end

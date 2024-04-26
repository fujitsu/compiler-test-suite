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
  write(1,*)400
end subroutine
end module

use mm, only:base
use mm2, only:e=>ext

type(e)::tc1
call tc1%prc1()
rewind 1
read(1,*) k
if (k/=400) print *,200
print *,'pass'
end

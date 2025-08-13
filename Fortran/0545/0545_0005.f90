module mm
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

type, extends(base)::e
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
subroutine prc1()
  write(6,*)300
end subroutine
subroutine cproc1()
  write(8,*)400
end subroutine
end module

use mm, only:base=>b
use mm2, only:ext=>e

type(ext)::tc1
call tc1%prc1()
rewind 8
read(8,*) k
if (k/=400) print *,200
print *,'pass'
end

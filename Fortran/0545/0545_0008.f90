module mm
type wbase
  contains
   procedure,nopass::prc1
end type

type, extends(wbase)::ext
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
module mmx
use mm,base=>wbase
end

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
  write(11,*)400
end subroutine
end module

use mmx, only:base
use mm2, only:ext

type(ext)::tc1
call tc1%prc1()
rewind 11
read(11,*) k
if (k/=400) print *,200
print *,'pass'
end

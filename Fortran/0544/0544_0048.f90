module m0
integer::x=0
end
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
use m0
x=x+1
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
use m0
x=x+10
end subroutine
end module

use mm, only:base
use mm2, only:ext

type(base)::tc0
type(ext)::tc1
call tc0%prc1()
call tc1%prc1()
call chk
print *,'pass'
end
subroutine chk
use m0
if (x/=11) print *,901,x
end

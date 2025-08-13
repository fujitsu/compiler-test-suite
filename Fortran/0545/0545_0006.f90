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
  write(9,*)400
end subroutine
end module

use mm, only:b=>base
use mm2, only:e=>ext

type(e)::tc1
call tc1%prc1()
rewind 9
read(9,*) k
if (k/=400) print *,200
print *,'pass'
end

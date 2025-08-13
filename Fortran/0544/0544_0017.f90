module mm
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(9,*)100
end subroutine
end
module mmm
use mm
type, extends(base)::e
  contains
   procedure,nopass::cproc1
end type
contains
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mm2
type b
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(6,*)300
end subroutine
end

module mmm2
use mm2
type, extends(b)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
subroutine cproc1()
  write(8,*)400
end subroutine
end module

use mmm, only:b=>base
use mmm2, only:e=>ext

type(b)::tc0
type(e)::tc1
call tc0%prc1()
call tc1%prc1()
rewind 8
read(8,*) k
if (k/=400) print *,200
rewind 9
read(9,*) k
if (k/=100) print *,100
read(9,*,end=100) k
print *,1000
100 continue
print *,'pass'
end

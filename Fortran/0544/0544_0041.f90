module mm
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(15,*)100
end subroutine
end
module mmm
use mm
type, extends(base)::e
  contains
   procedure,nopass::cproc1
end type
private
public::base
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
private
public::ext
contains
subroutine cproc1()
  write(14,*)400
end subroutine
end module

use mmm, b=>base
use mmm2, e=>ext

type(b),allocatable::tc0
type(e),allocatable::tc1
allocate(tc0,tc1)
call tc0%prc1()
call tc1%prc1()
rewind 14
read(14,*) k
if (k/=400) print *,200
rewind 15
read(15,*) k
if (k/=100) print *,100
read(15,*,end=100) k
print *,1000
100 continue
print *,'pass'
end

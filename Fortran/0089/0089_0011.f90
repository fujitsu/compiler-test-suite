module mm
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(3,*)100
end subroutine
end
module mmm
use mm
type, extends(base)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type
private
public::base
contains
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mm2
type base
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
type, extends(base)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
subroutine cproc1()
  write(1,*)400
end subroutine
end module

use mmm 
use mmm2, only:ext

type(base)::tc0
type(ext)::tc1
call tc0%prc1()
call tc1%prc1()
rewind 1
read(1,*) k
if (k/=400) print *,200
rewind 3
read(3,*) k
if (k/=100) print *,100
read(3,*,end=100) k
print *,1000
100 continue
print *,'pass'
end

module mm
type base
  contains
end type

type, extends(base)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type

contains
subroutine cproc1()
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
  write(2,*)400
end subroutine
end module
module ym2
use mm2,only:ext=>e
end

module z1
use mm, only:base
end
module z2
use ym2, only:ext
end
use z1,only:base
use z2,only:ext

type(ext)::tc1
call tc1%prc1()
rewind 2
read(2,*) k
if (k/=400) print *,200
print *,'pass'
end

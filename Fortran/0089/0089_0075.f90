module nn
type b
  contains
   procedure,nopass::prc0
end type

type ext
  contains
   procedure,nopass::cproc1
end type

contains
subroutine prc0()
  write(1,*)100
end subroutine
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mm
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
contains
subroutine prc1()
  write(3,*)300
end subroutine
subroutine cproc1()
  write(6,*)400
end subroutine
end module

use nn, only:b
use mm, only:ext

type(b)::tc0
type(ext)::tc1
call tc0%prc0()
call tc1%prc1()
rewind 1
read(1,*) k
if (k/=100) print *,1001
read(1,*,end=100) k
print *,10021
100 continue
rewind 3
read(3,*) k
if (k/=300) print *,4001
read(3,*,end=400) k
print *,40021
400 continue

print *,'pass'
end

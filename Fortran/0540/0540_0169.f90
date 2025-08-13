module nn
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
  write(6,*)1001
end subroutine
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module kk
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
  write(6,*)1002
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
  write(34,*)400
end subroutine
end module
module m4
contains
subroutine s(v)
use nn, only:base
use kk, only:base
use mm, only:base
use mm2, only:ext

type(ext)::v
end
end

use nn, only:base
use kk, only:base
use mm, only:base
use mm2, only:ext
use m4

type(ext)::tc1
call tc1%prc1()
rewind 34
read(34,*) k
if (k/=400) print *,200
print *,'pass'
end

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
  write(6,*)300
end subroutine
subroutine cproc1()
  write(33,*)400
end subroutine
end module
module m4
contains
subroutine s(v)
use nn, only:b=>base
use kk, only:b=>base
use mm, only:b=>base
use mm2, only:ext

type(ext)::v
end
end

use nn, only:b=>base
use kk, only:b=>base
use mm, only:b=>base
use mm2, only:ext
use m4

type(ext)::tc1
call tc1%prc1()
rewind 33
read(33,*) k
if (k/=400) print *,200
print *,'pass'
end

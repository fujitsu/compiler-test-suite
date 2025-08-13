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
  write(10,*)400
end subroutine
end module

module ww
use nn, only:b=>base
use kk, only:b=>base
use mm, only:b=>base
end
module wwe
use ww
use mm2, only:ext
end
use wwe
type(ext)::tc1
call tc1%prc1()
rewind 10
read(10,*) k
if (k/=400) print *,200
print *,'pass'
end

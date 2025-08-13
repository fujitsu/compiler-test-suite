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
  write(7,*)300
end subroutine
subroutine cproc1()
  write(7,*)400
end subroutine
end module

module m
use mm,only:e=>ext,base
end
use m, only:b=>base
use mm2, only:e=>ext

type(e),target::tc1t
type(e),pointer::tc1p
tc1p=>tc1t
call tc1p%prc1()
rewind 7
read(7,*) k
if(k/=400) print *,200
print *,'pass'
end

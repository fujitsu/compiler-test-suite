module nn
type b
  contains
   procedure,nopass::prc0
end type

type ext
  contains
   procedure,nopass::prc1
end type
private
public::b

contains
subroutine prc0()
print *,100
end subroutine
subroutine prc1()
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
  write(6,*)300
end subroutine
subroutine cproc1()
end subroutine
end module

use nn
use mm, only:ext

type(ext)::tc1
call tc1%prc1()

print *,'pass'
end

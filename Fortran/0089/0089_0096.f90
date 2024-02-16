module nn
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(6,*)100
end subroutine
end

module mm
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
end subroutine
end

module mmm
use mm
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
contains
subroutine cproc1()
  write(6,*)400
end subroutine
end module

use mmm, only:ext 
use nn 

type(ext)::var
call var%prc1()
print *,'pass'
end

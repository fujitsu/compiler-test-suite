module n
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
end subroutine
end

module mm
use n  
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
private::base
contains
subroutine cproc1()
  write(6,*)400
end subroutine
end module

use mm

type(ext)::var 
call var%prc1()
print *,'pass'
end

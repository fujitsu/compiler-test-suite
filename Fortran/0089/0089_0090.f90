module mm
type base
  contains
   procedure,nopass::prc1
end type
private::base
contains
subroutine prc1()
  write(6,*)100
end subroutine
end
module n
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
end subroutine
end

use mm
use n 
type(base)::var
call var%prc1()
print *,'pass'
end

module w
integer::c=0
end
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
use w
  c=300
end subroutine
end
module xmm
contains
  subroutine xmms(x,y)
    use mm
type base
end type
    type(base)::x
type ext
end type
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use n
    type(base)::x
type ext
end type
    type(ext  )::y
   end
end
use xmm
use xmm2

use mm
use n 
use w
type(base)::var
call var%prc1()
if (c/=300)print *,1010
print *,'pass'
end

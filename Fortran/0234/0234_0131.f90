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
module nnn
use nn
end module

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
module xmm
contains
  subroutine xmms(x,y)
    use mmm
    type(base)::x
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use nnn 
type ext
end type
    type(base)::x
    type(ext  )::y
   end
end
use xmm
use xmm2

use nn , only:base
use mmm, only:ext 

type(ext)::var
call var%prc1()
print *,'pass'
end

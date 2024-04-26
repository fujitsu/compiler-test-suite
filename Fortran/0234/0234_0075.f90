module mm
type base
  contains
   procedure,nopass::prc1
end type

type ext
  contains
   procedure,nopass::prc1=>cproc1
end type

contains
integer function prc1()
  prc1=100
end function
integer function cproc1()
  cproc1=200
end function
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
integer function prc1()
  prc1=300
end function
integer function cproc1()
  cproc1=400
end function
end module
module xmm
contains
  subroutine xmms(x,y)
    use mm
    type(base)::x
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use mm2
    type(base)::x
    type(ext  )::y
   end
end
use xmm
use xmm2

use mm, only:base
use mm2, only:ext

type(base)::tc0
type(ext)::tc1
if(tc0%prc1()/=100)print*,1021
if(tc1%prc1()/=400)print*,102
print *,'pass'
end

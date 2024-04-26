module mm
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::child
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
module xm
contains
  subroutine xms(x,y)
    use mm
    type(base)::x
    type(child)::y
  end 
end

module mm2
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::child
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
    use mm2
    type(base)::x
    type(child)::y
  end 
end

use xm
use xmm
use mm, only:base
use mm2, only:child

type(child)::tc1
if(tc1%prc1()/=400)print*,102
print *,'pass'
end

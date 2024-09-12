module mm
type base
  contains
   procedure,nopass::prc2
end type

type, extends(base)::child
  contains
   procedure,nopass::prc1=>cproc1
end type

contains
integer function prc2()
  prc2=100
end function
integer function cproc1()
  cproc1=200
end function
end module

module mm2
type base
  contains
   procedure,nopass::prc2
end type

type, extends(base)::child
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
integer function prc2()
  prc2=300
end function
integer function cproc1()
  cproc1=400
end function
end module

use mm, only:b=>base  
use mm2, only:child

type(child)::tc1
type(b)::y
if (y%prc2()/=100) print *,90
if(tc1%prc1()/=400)print*,102
print *,'pass'
end

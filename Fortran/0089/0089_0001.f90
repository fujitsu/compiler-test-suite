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

use mm, only:base            
use mm2, only:ext           

type(base)::tc_base             
type(ext)::tc_ext             
kk=tc_base%prc1()
if(kk        /=100)print*,101 ,kk 

kk=tc_ext%prc1()
if(kk        /=400)print*,102 ,kk

print *,'pass'
end

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

use mm

type(base)::tc_base             
type(ext)::tc_ext             
kk=tc_base%prc1()
if(kk        /=100)print*,101 ,kk 

kk=tc_ext%prc1()
if(kk        /=200)print*,102 ,kk

print *,'pass'
end

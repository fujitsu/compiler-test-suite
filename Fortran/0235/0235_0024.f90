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
type, extends(base)::ext2
  contains
   procedure,nopass::prc1=>cproc2
end type
contains
integer function prc1()
  prc1=300
end function
integer function cproc1()
  cproc1=400
end function
integer function cproc2()
  cproc2=4000
end function
end module

use mm, only:base            
use mm2, only:ext,ext2      

type(base)::tc_base             
type(ext)::tc_ext             
type(ext2)::tc_ext2             
kk=tc_base%prc1()
if(kk        /=100)print*,101 ,kk 

kk=tc_ext%prc1()
if(kk        /=400)print*,102 ,kk

kk=tc_ext2%prc1()
if(kk        /=4000)print*,103 ,kk

print *,'pass'
end

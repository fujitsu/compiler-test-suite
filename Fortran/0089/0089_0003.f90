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
subroutine prc1()
  write(1,*) 100
end subroutine
subroutine cproc1()
  write(1,*) 200
end subroutine
end module

use mm

type(base)::tc_base             
type(ext)::tc_ext             
call tc_base%prc1()

call tc_ext%prc1()
rewind 1
read(1,*) k
if (k/=100) print *,100
read(1,*) k
if (k/=200) print *,200

print *,'pass'
end

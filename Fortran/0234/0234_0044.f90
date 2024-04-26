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
  write(6,*) 100
end subroutine
subroutine cproc1()
  write(1,*) 200
end subroutine
end module
module xmm
contains
  subroutine xmms(x,y)
    use mm
    type(base)::x
    type(ext  )::y
   end
end

use xmm
use mm

type(ext)::tc_ext             
call tc_ext%prc1()
rewind 1
read(1,*) k
if (k/=200) print *,200

print *,'pass'
end

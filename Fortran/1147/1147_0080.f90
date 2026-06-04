module mm2                                       !5)
type base                                        !6)
  contains
   procedure,nopass::prc1                        !7)
end type

type, extends(base)::e                       !8)
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
subroutine prc1()
  write(6,*)300
end subroutine
subroutine cproc1()
  write(55,*)400
end subroutine
end module
module ym2
use mm2,only:ext=>e
end

module km
use ym2, only:ext                              !10)
private
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end

submodule(km)smod
contains
  module subroutine sub
type(ext)::tc1                                 !11)
call tc1%prc1()
rewind 55
read(55,*) k
if (k/=400) print *,200
end
end
use km
call sub
print *,'sngg993n : pass'
end

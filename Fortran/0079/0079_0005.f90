!
module m
interface
module subroutine sub0(i)
end subroutine
module subroutine sub1(i)
end subroutine
module subroutine sub2(i)
end subroutine
end interface
end
module mmm
  type z_type
     integer,pointer::z
  end type z_type
  type(z_type),pointer ::g
end

submodule  (m) smod
use mmm
contains
module subroutine sub0(i)
i=30
call sub1(ii)
if (ii.ne.10) print *,'err 1'
end subroutine
module subroutine sub1(i)
allocate(g)
allocate(g%z)
i=10
call sub2(ii)
if (ii.ne.20) print *,'err 2'
end subroutine
module subroutine sub2(i)
use mmm
      g%z=1
i=20
end subroutine
end

use m
use mmm
call sub0(ii)
if (ii.ne.30) print *,'err 0'
!print *,g%z
if (g%z.ne.1) then
 print *,'ng'
else
 print *,'pass'
endif

end


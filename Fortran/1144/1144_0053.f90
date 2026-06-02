module n
type x
   integer::x1=1
   integer,private::x2=2
end  type
end
module m01
use n
type(x):: v
interface
  module subroutine s
  end subroutine
end interface
contains
 subroutine t1
    if (v%x1/=1) print *,101
    !if (v%x2/=2) print *,102
 end subroutine
end
submodule (m01)  smod
contains
 module subroutine s
    if (v%x1/=1) print *,101
    !if (v%x2/=2) print *,102
 end subroutine
end
use m01
call t1
call s
    if (v%x1/=1) print *,201
    !if (v%x2/=2) print *,202
print *,'sngg385n : pass'
end

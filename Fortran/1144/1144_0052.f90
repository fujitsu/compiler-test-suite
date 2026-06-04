module m01
type x
   integer::x1=1
   integer,private::x2=2
end  type
interface
  module subroutine s
  end subroutine
end interface
end
submodule (m01)  smod
type(x):: v
contains
 module subroutine s
    if (v%x1/=1) print *,101
    if (v%x2/=2) print *,102
 end subroutine
end
use m01
type(x):: v
call s
    if (v%x1/=1) print *,201
    !if (v%x2/=2) print *,202
print *,'sngg384n : pass'
end

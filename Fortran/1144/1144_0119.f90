module n
type x
   integer::x1=1
   contains
generic,private::gen=>z
    procedure        ::z
end  type
contains
subroutine z(d,k)
class(x)::d
if (d%x1/=k) print *,1001
end subroutine
end
module m01
use n
interface
  module subroutine s
  end subroutine
end interface
private::z,x
public::s
end
submodule (m01)  smod
type(x)::v
contains
 module subroutine s
    if (v%x1/=1) print *,101
call v%z(1)
 end subroutine
end
use m01
call s
print *,'sngg451n : pass'
end

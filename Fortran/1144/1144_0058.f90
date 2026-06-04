module n
type x
   integer::x1=1
   contains
generic,private::gen=>y,z
    procedure,private::y
    procedure        ::z
end  type
contains
subroutine z(d,k)
class(x)::d
if (d%x1/=k) print *,1001
end subroutine
subroutine y(d)
class(x)::d
if (d%x1/=1) print *,1001
end subroutine
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
!call v%y()
call v%z(1)
!call v%gen(1)
 end subroutine
end
submodule (m01)  smod
contains
 module subroutine s
    if (v%x1/=1) print *,101
!call v%y()
call v%z(1)
 end subroutine
end
use m01
call t1
call s
    if (v%x1/=1) print *,201
!call v%y()
call v%z(1)
!call v%gen(1)
print *,'sngg390n : pass'
end

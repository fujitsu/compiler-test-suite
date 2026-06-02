module m01
type x
   integer::x1=1
   contains
    procedure,private::y
    procedure        ::z
end  type
type(x):: v
interface
  module subroutine s
  end subroutine
end interface
contains
subroutine z(d)
class(x)::d
if (d%x1/=1) print *,1001
end subroutine
subroutine y(d)
class(x)::d
if (d%x1/=1) print *,1001
end subroutine
 subroutine t1
    if (v%x1/=1) print *,101
call v%y()
call v%z()
 end subroutine
end
submodule (m01)  smod
contains
 module subroutine s
    if (v%x1/=1) print *,101
call v%y()
call v%z()
 end subroutine
end
use m01
call t1
call s
    if (v%x1/=1) print *,201
!call v%y()
call v%z()
print *,'sngg387n : pass'
end

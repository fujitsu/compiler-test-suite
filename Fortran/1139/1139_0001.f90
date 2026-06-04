module m1
interface
function yf() result(r)
class(*),allocatable::r
end function
end interface
end
subroutine s1
use m1
!implicit class(*) (x)
procedure(yf),pointer::xf
xf=>yf
call xfoo(xf())
contains
subroutine xfoo(x)
class(*)::x
k=0
select type(x)
type is(integer)
if (x/=1) print *,101
k=1
end select
if (k/=1) print *,20021
end subroutine
end
call s1
print *,'sngg162k : pass'
end
function xf() result(r)
class(*),allocatable::r
allocate(r,source=1)
end function
function yf() result(r)
class(*),allocatable::r
allocate(r,source=1)
end function

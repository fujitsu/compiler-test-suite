module m1
type x1
  integer:: y1
end type
contains
subroutine ss
type,extends(x1):: x2
  integer :: y2
end type
type (x2):: v,vv
interface
subroutine s1(a,n,b)
import
class (x1)::a,b
end subroutine
end interface
call s1(v,1,vv)
call t1(vv)
contains
subroutine t1(vv)
type (x2):: v
class(x1) :: vv
call s1(v,1,vv)
end subroutine
end subroutine
end

subroutine s1(a,n,b)
use m1
class (x1)::a

class (x1):: b
k=0
select type(a)
  class is(x1)
    if (n/=1) then
      print *,101
    endif
    k=1
end select
if (k/=1) print *,102
if (n==1) then 
  if (same_type_as(a,b))then
  else 
    print *,202
  endif
else
   print *,301
endif
end subroutine

use m1
call ss
print *,'pass'
end

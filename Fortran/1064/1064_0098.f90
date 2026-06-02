module m1
  integer,pointer:: p(:)
contains
 subroutine s1(p)
  integer,intent(out),pointer:: p(:)
    allocate(p(2:3))
    p= [2,3]
 end subroutine
end

use m1
    allocate(p(12:13))
    p=[12,13]
call s1(p)
if (any(lbound(p)/=2)) print *,201
if (any(p/=[2,3])) print *,202
print *,'pass'
end

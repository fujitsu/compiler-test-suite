module m1
type x
  integer,pointer:: p(:)
end type
type xx
  type(x),pointer:: p
end type
end
subroutine s1
use m1
type (xx):: w
allocate(w%p)
allocate(w%p%p(2))
w%p%p=3
if (w%p%p(2)/=3) print *,104
end
call s1
print *,'pass'
end

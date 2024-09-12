module m1
type x
  integer,pointer:: p(:)
end type
type xx
  type(x),pointer:: p
end type
type xxx
  type(xx),pointer:: p
end type
integer,target::t(2)=1
end
subroutine s1
use m1
type (x):: v
type (xxx):: w
allocate(v%p(2))
v%p=1
if (v%p(2)/=1) print *,101
v%p=>t
if (v%p(2)/=1) print *,102
allocate(v%p(2),source=3)
if (v%p(2)/=3) print *,103
allocate(w%p)
allocate(w%p%p)
allocate(w%p%p%p(2))
w%p%p%p=3
if (w%p%p%p(2)/=3) print *,104
end
call s1
print *,'pass'
end

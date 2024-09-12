module m
type t
integer::xx
end type
contains
subroutine s(a)
class(t),allocatable::a(:)
class(t),allocatable::b
allocate(b,source=t(1))
select type(a)
type is(t)
a=a
a=a(1)
a=b
end select
end subroutine
end
use m
class(t),allocatable::a(:)
allocate(a(1),source=t(1))
call s(a)
print *,'pass'
end

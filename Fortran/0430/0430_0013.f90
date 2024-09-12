module m
type t(a)
 integer,kind::a
 character(:,a),pointer::h
 character(:,1),pointer::hh
 character(:),pointer::hhh
end type
end
use m
call s1
contains
subroutine s1
type(t(1))::t1
 allocate(character(1,1):: t1%h)
 allocate(character(1):: t1%h)
 allocate(character(2,1):: t1%hh)
 allocate(character(2):: t1%hh)
 allocate(character(3,1):: t1%hhh)
 allocate(character(3):: t1%hhh)
if(len(t1%h) .eq. 1 .and. len(t1%hh).eq. 2 .and. len(t1%hhh) .eq. 3 & 
    .and. t1%a .eq. kind(t1%h))then
print *,'pass'
else
print *,'fail'
endif
end subroutine 
end

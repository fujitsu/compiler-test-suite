module m
contains
subroutine s1
type t(a)
 integer,kind::a
 character(:,a),pointer::h
 character(:,1),pointer::hh
 character(:),pointer::hhh
end type
type(t(1))::t1
 allocate(character(2,1):: t1%h)
 allocate(character(2):: t1%h)
 allocate(character(3,1):: t1%hh)
 allocate(character(3):: t1%hh)
 allocate(character(4,1):: t1%hhh)
 allocate(character(4):: t1%hhh)
if(len(t1%h) .eq. 2 .and. len(t1%hh).eq. 3 .and. len(t1%hhh) .eq. 4 &
        .and. t1%a .eq. kind(t1%h))then
print *,'pass'
else
print *,'fail'
endif
end subroutine 
end
use m
call s1
end

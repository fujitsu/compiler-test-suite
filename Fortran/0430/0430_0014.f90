module m
contains
subroutine s1
type t(a)
 integer,kind::a
 character(:,a),pointer::h
end type
type(t(1))::t1
 allocate(character(2,1):: t1%h)
if(len(t1%h) .eq. 2  ) then
print *,'pass'
else
print *,'fail'
endif
end subroutine 
end
use m
call s1
end

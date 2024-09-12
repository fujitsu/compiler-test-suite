module m1
contains
 subroutine s(p)
 integer,pointer,intent(in)::p(:)
p(2)=1
end
end
use m1
integer,pointer:: p(:)
allocate( p(2), source=0)
call s(p)
if (p(2)/=1) print *,2001
print *,'pass'
end 

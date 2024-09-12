module m1
integer,pointer::p(:)
integer,pointer::p3(:,:,:)
contains
function f( a ) result(r)
integer,target::a(2,2,4)
integer,pointer::r(:)
r=>a(2,2,:)
end function
subroutine s1
allocate(p3(2,2,4))
p3=reshape( [(k,k=1,16)],[2,2,4])
p=> f( p3 )
if (any(p/=[4,8,12,16])) print *,p
end subroutine
end
use m1
call s1
print *,'pass'
end



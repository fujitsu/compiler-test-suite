module m1
contains
subroutine s1
character(:),contiguous,pointer::t1(:,:,:)
character(:),pointer::p2(:,:)
allocate(character(2)::t1(4,3,2))
p2(11:18,1:3)=> t1
if (any(lbound(p2)/=[11,1])) print *,201
if (any(ubound(p2)/=[18,3])) print *,20
if (len(t1)/=2) print *,301
if (len(p2)/=2) print *,302
end subroutine
end
use m1
call s1()
print *,'pass'
end

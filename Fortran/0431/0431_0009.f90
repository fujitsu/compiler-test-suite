module m1
character(1),target:: t1(-3:3)=char(reshape([1,2,3,4,5,6,7],[7]))
contains
subroutine s1
k=1
call chk(t1)
call chk(t1(:))
call chk(t1(:)(:))
call chk(t1(:)(1:1))
call chk(t1(:)(k:1))
end subroutine
subroutine chk(pp)
character(:),pointer,intent(in)::pp(:)
if (len(pp)/=1) print *,200
if (any(pp/=char(reshape([1,2,3,4,5,6,7],[7])))) print *,201
end subroutine
end
use m1
call s1
print *,'pass'
end
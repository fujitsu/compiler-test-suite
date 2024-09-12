module m1
character(1),target:: t1(-3:3)
contains
subroutine s1
k=1
n=-3
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1)
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(:))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(:)(:))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(:)(1:1))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(:)(k:1))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(-3:))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(-3:)(:))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(-3:)(1:1))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(-3:)(k:1))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(n:))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(n:)(:))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(n:)(1:1))
if (any(t1/='')) print *,1001
t1=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t1(n:)(k:1))
if (any(t1/='')) print *,1001
end subroutine
subroutine chk(pp)
character(*),pointer,intent(in)::pp(:)
if (len(pp)/=1) print *,200
if (any(pp/=char(reshape([1,2,3,4,5,6,7],[7])))) print *,201
pp=''
end subroutine
end
use m1
call s1
print *,'pass'
end

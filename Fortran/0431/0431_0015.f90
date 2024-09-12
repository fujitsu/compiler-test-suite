module m1
character(1),target:: t1(-3:3)
character(1),target:: t2(-3:3)
character(1),target:: t3(-3:3)
character(1),target:: t4(-3:3)
interface
subroutine chk(p1,p2,p3,pp)
character(:),pointer,intent(in)::pp(:),p1(:),p2(:),p3(:)
end subroutine
end interface
contains
subroutine s1
k=1
n=-3
t1=char(reshape([1,2,3,4,5,6,7],[7]))
t2=char(reshape([1,2,3,4,5,6,7],[7]))
t3=char(reshape([1,2,3,4,5,6,7],[7]))
t4=char(reshape([1,2,3,4,5,6,7],[7]))
call chk(t2,t3,t4,t1)
call chk(t2,t3,t4,t1(:))
call chk(t2,t3,t4,t1(:)(:))
call chk(t2,t3,t4,t1(:)(1:1))
call chk(t2,t3,t4,t1(:)(k:1))
call chk(t2,t3,t4,t1(-3:))
call chk(t2,t3,t4,t1(-3:)(:))
call chk(t2,t3,t4,t1(-3:)(1:1))
call chk(t2,t3,t4,t1(-3:)(k:1))
call chk(t2,t3,t4,t1(n:))
call chk(t2,t3,t4,t1(n:)(:))
call chk(t2,t3,t4,t1(n:)(1:1))
call chk(t2,t3,t4,t1(n:)(k:1))
end subroutine
end
subroutine chk(p1,p2,p3,pp)
character(:),pointer,intent(in)::pp(:),p1(:),p2(:),p3(:)
if (len(pp)/=1) print *,200
if (any(pp/=char(reshape([1,2,3,4,5,6,7],[7])))) print *,201
if (len(p1)/=1) print *,211
if (any(p1/=char(reshape([1,2,3,4,5,6,7],[7])))) print *,202
if (len(p2)/=1) print *,212
if (any(p2/=char(reshape([1,2,3,4,5,6,7],[7])))) print *,203
if (len(p3)/=1) print *,213
if (any(p3/=char(reshape([1,2,3,4,5,6,7],[7])))) print *,204
end subroutine
use m1
call s1
print *,'pass'
end

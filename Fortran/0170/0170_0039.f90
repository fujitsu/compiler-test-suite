subroutine s1
complex,pointer:: p1(:,:),p2(:)
complex,parameter :: c(2,3)=cmplx(reshape([1,2,3,4,5,6],[2,3]),reshape([1,2,3,4,5,6],[2,3]))
complex,target :: t(2,3)=c
complex,parameter::cx(4)=cmplx([1,2,5,6],[1,2,5,6])
complex,parameter::cy(2)=cmplx([2,6],[2,6])
p1=> t(:,::2)
if (any([ p1 ]/=cx)) print *,101
call ss( [ p1 ],cx)
if (any(ubound([ p1])/= 4)) print *,102
p2=> t(2,::2)
if (any([ p2 ]/=cy)) print *,201
call ss( [ p2 ],cy)
if (any([ fp1() ]/=cx)) print *,101
call ss( [ fp1() ],cx)
if (any(ubound([ fp1()])/= 4)) print *,102
if (any([ fp2() ]/=cy)) print *,201
call ss( [ fp2() ],cy)
if (any([ ep1(p1) ]/=cx)) print *,101
call ss( [ ep1(p1) ],cx)
if (any(ubound([ ep1(p1)])/= 4)) print *,102
if (any([ ep1(p2) ]/=cy)) print *,201
call ss( [ ep1(p2) ],cy)
contains
subroutine ss(x,y)
complex::x(:)
complex::y(:)
if (any([ x  ]/=y)) print *,201
if (any(ubound( x )/= size(y))) print *,202
end subroutine
function fp1() result(r)
complex,pointer::r(:,:)
r=>t(:,::2)
end function
function fp2() result(r)
complex,pointer::r(:)
r=> t(2,::2)
end function
elemental function ep1(a) result(r)
complex,intent(in):: a
complex            :: r
r=a
end function
end
call s1
print *,'pass'
end


subroutine s1
integer,pointer:: p1(:,:),p2(:)
integer,target :: t(2,3)=reshape([1,2,3,4,5,6],[2,3])
p1=> t(:,::2)
if (any([ p1,p1 ]/=[1,2,5,6,1,2,5,6])) print *,101
call ss( [ p1,p1 ],[1,2,5,6,1,2,5,6])
if (any(ubound([ p1,p1])/= 4*2)) print *,102
p2=> t(2,::2)
if (any([ p2,p2 ]/=[2,6,2,6])) print *,201
call ss( [ p2,p2 ],[2,6,2,6])
if (any([ fp1() ,fp1()]/=[1,2,5,6,1,2,5,6])) print *,101
call ss( [ fp1(),fp1() ],[1,2,5,6,1,2,5,6])
if (any(ubound([ fp1(),fp1()])/= 4*2)) print *,102
if (any([ fp2() ,fp2()]/=[2,6,2,6])) print *,201
call ss( [ fp2(),fp2() ],[2,6,2,6])
if (any([ ep1(p1),ep1(p1) ]/=[1,2,5,6,1,2,5,6])) print *,101
call ss( [ ep1(p1),ep1(p1) ],[1,2,5,6,1,2,5,6])
if (any(ubound([ ep1(p1),ep1(p1)])/= 4*2)) print *,102
if (any([ ep1(p2),ep1(p2) ]/=[2,6,2,6])) print *,201
call ss( [ ep1(p2),ep1(p2) ],[2,6,2,6])
contains
subroutine ss(x,y)
integer::x(:)
integer::y(:)
if (any([ x  ]/=y)) print *,201
if (any(ubound( x )/= size(y))) print *,202
end subroutine
function fp1() result(r)
integer,pointer::r(:,:)
r=>t(:,::2)
end function
function fp2() result(r)
integer,pointer::r(:)
r=> t(2,::2)
end function
elemental function ep1(a) result(r)
integer,intent(in):: a
integer            :: r
r=a
end function
end
call s1
print *,'pass'
end


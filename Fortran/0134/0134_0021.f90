module m1
contains
subroutine s1(c1,c11,a1,k)
integer,pointer:: a1(:)
character(*)::c1,c11
call ss( [ [ c1 ] , c11 ] , a1)
end subroutine 
function kf( x1 )
character(*) ::x1(:)
if (len(x1)/=4)print *,1001,len(x1)
if (size(x1)/=2) print *,1002,size(x1)
if (x1(1)/='1234')print *,2001,x1(1)
if (x1(2)/='1234 ')print *,2002,x1(2)
kf=2
end function 
subroutine ss(x1,a1)
character(*) ::x1(:)
integer a1(*)
if (len(x1)/=4)print *,3001,len(x1)
if (size(x1)/=2) print *,3002,size(x1)
if (x1(1)/='1234')print *,3004,x1(1)

if (a1(1)/=1)print *,4001,a1(1)
if (a1(2)/=3)print *,4002,a1(2)
a1(:2)=a1(:2)+100
end subroutine
end
use m1
character(4)::c1='1234'
character(4)::c11='1234'
integer,target,dimension(3)::t1=[1,2,3]
integer,pointer:: a1(:)
k=1
a1=>t1(1:3:2)
call       s1(c1,c11,a1,k)
if (a1(1)/=101)print *,5001,a1(1)
if (a1(2)/=103)print *,5002,a1(2)
print *,'pass'
end


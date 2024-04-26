module m1
contains
subroutine s1(c1,c2,c11,c12,a1,a2,k1,k2,k3,k4)
integer,pointer:: a1(:),a2(:)
character(*)::c1,c2(:),c11,c12(:)
call ss( [ character(len=  &
              kf( [ character(len=k2+k3) :: c1,c2 ] )  +k4 ) ::  c11 ] )
end subroutine 
function kf( x1 )
character(*) ::x1(:)
if (len(x1)/=5)print *,1001,len(x1)
if (size(x1)/=3) print *,1002,size(x1)
if (x1(1)/='12345')print *,2001,x1(1)
if (x1(2)/='1234 ')print *,2002,x1(2)
if (x1(3)/='1234 ')print *,2003,x1(3)
kf=2
end function 
subroutine ss(x1)
character(*) ::x1(:)
if (len(x1)/=6)print *,3001,len(x1)
if (size(x1)/=1) print *,3002,size(x1)
if (x1(1)/='1234  ')print *,3004,x1(1)
end subroutine
end
use m1
character(6)::c1='123456'
character(4)::c2(2)=(/'1234','1234'/)
character(4)::c11='1234'
character(7)::c12(2)=(/'1234567','1234567'/)
integer,target,dimension(3)::t1=[1,2,3]
integer,target,dimension(3)::t2=[1,2,3]
integer,pointer:: a1(:),a2(:)
k1=1;k2=2;k3=3;k4=4
a1=>t1(1:3:2)
a2=>t2(1:2)
call       s1(c1,c2,c11,c12,a1,a2,k1,k2,k3,k4)
print *,'pass'
end


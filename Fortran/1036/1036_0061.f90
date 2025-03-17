module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
type y
 integer,pointer::w(:,:)
end type
type (y)::v
integer::x(5,5)
integer::k1=1,k2=2,k3=3,k4=4
contains
subroutine s(v,i)
type(y)::v
call sub(v%w,i,x(k1+k4,k2+k3))
call sub(v%w,i,x(5,5))
call sub(v%w,i,x(if((/(kk,kk=1,5)/)),5))
end subroutine
function if(a)
integer a(:)
if=a(5)
end function
subroutine sub(w,i,nm)
integer w(*)
  if (nm/=25)print *,'error-4',i
if (i==1) then
  if (any((/w(1:25)/)/=(/(k,k=1,25)/)))print *,'error-3',i
else 
  if (any((/w(1:15)/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-c',i
endif
end subroutine
end
use m1
x=a
v%w=> a
call s(v,1)
v%w=> a(1:5:2,:)
call s(v,2)
print *,'pass'
end

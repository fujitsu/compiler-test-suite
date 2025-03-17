module m1
 type t
    integer,pointer::a(:,:)
 end type
contains
subroutine s(x,i)
type (t)::x
call sub(x%a,i)
end subroutine
end
use m1
type (t)::var
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
var%a=> a
call s(var,1)
var%a=> a(1:5:2,:)
call s(var,2)
print *,'pass'
end
subroutine sub(z,i)
integer z(*)
if (i==1) then
 j=1
 jj=25
  if (any(z(1:jj)/=(/(k,k=1,25,j)/)))print *,'error',i
else 
 j=2
 jj=15
  if (any(z(1:jj)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error',i
endif
end

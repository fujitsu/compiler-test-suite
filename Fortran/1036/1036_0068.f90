module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
type x
 integer,pointer::w(:,:)
end type
type (x)::v
contains
subroutine s(v,i)
type(x)::v
call sub(v%w,i,'123456'(3:5))
end subroutine
subroutine sub(w,i,nm)
integer w(*)
character(*) nm
if (nm/='345')print *,'error-p'
if (i==1) then
  if (any((/w(1:25)/)/=(/(k,k=1,25)/)))print *,'error-3',i
else 
  if (any((/w(1:15)/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-c',i
endif
end subroutine
end
use m1
v%w=> a
call s(v,1)
v%w=> a(1:5:2,:)
call s(v,2)
print *,'pass'
end

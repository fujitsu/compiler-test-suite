module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
 integer::w1(5,5)
contains
subroutine s(w,i)
integer::w(:,:)
call sub(w,i)
end subroutine
subroutine sub(w,i)
integer w(*)
if (i==1) then
  if (any((/w(1:25)/)/=(/(k,k=1,25)/)))print *,'error-3',i
else 
  if (any((/w(1:15)/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-c',i
endif
end subroutine
end
use m1
w1= a
call s(w1,1)
call s(w1(1:5:2,:),2)
print *,'pass'
end

module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
 integer::w1(5,5)
contains
subroutine s(w,i)
integer::w(:,:)
call sub(w(:,2),i)
end subroutine
subroutine sub(w,i)
integer w(*)
if (i==1) then
  if (any((/w(1:5)/)/=(/6,7,8,9,10/)))print *,'error-c',i
else 
  if (any((/w(1:3)/)/=(/6,8,10/)))print *,'error-d',i
endif
end subroutine
end
use m1
w1= a
call s(w1,1)
call s(w1(1:5:2,:),2)
print *,'pass'
end

module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
integer,pointer::w(:,:)
contains
subroutine s(w,i)
integer,pointer    ::w(:,:)
integer,pointer::f(:,:)
allocate(f(5,5));f=a
call sub(w,i,f)
end subroutine
subroutine sub(w,i,f)
integer w(*),f(*)
  if (any((/f(1:25)/)/=(/(k,k=1,25)/)))print *,'error-4',i
if (i==1) then
  if (any((/w(1:25)/)/=(/(k,k=1,25)/)))print *,'error-3',i
else 
  if (any((/w(1:15)/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-c',i
endif
end subroutine
end
use m1
w=> a
call s(w,1)
w=> a(1:5:2,:)
call s(w,2)
print *,'pass'
end

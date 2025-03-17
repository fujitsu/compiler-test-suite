module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
type x3
 integer   ww0
 integer,pointer::w(:,:)
end type
type x2
 integer   ww0
 type(x3)::ww1
 integer   ww2
end type
type x1
 integer   w0
 type(x2)::w1
 integer   w2
end type
type (x1)::v
contains
subroutine s(i)
integer,pointer::f(:,:)
allocate(f(5,5));f=a
call sub(v%w1%ww1%w,i,f)
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
v%w1%ww1%w=> a
call s(1)
v%w1%ww1%w=> a(1:5:2,:)
call s(2)
print *,'pass'
end

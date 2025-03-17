module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
type x
 integer,pointer::w(:,:)
end type
type (x)::v
type y3
 integer,pointer::w1
 integer,pointer::w2(:,:)
end type
type y2
 type(y3)::w1
 type(y3)::w2(3,3)
end type
type y1
 type(y2)::w1
 type(y2)::w2(3,3)
end type
type (y1)::t1,t2(3,3)
contains
subroutine s(v,i,t)
type(x)::v
type(y1)::t
integer,pointer::f(:,:)
allocate(f(5,5));f=a
call sub(v%w(:,2),i,f,t%w1%w1%w2(:,2))
end subroutine
subroutine sub(w,i,f,nm)
integer w(*),f(*),nm(*)
  if (any((/f(1:25)/)/=(/(k,k=1,25)/)))print *,'error-4',i
if (i==1) then
  if (any((/w(1:5)/)/=(/(k,k=6,10)/)))print *,'error-3',i
  if (any((/nm(1:5)/)/=(/(k,k=6,10)/)))print *,'error-5',i
else 
  if (any((/w(1:3)/)/=(/6,8,10/)))print *,'error-c',i
  if (any((/nm(1:3)/)/=(/6,8,10/)))print *,'error-d',i
endif
end subroutine
end
use m1
v%w=> a
t1%w1%w1%w2=> a
call s(v,1,t1)
v%w=> a(1:5:2,:)
t1%w1%w1%w2=> a(1:5:2,:)
call s(v,2,t1)
print *,'pass'
end

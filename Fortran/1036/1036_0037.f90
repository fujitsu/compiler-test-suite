module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
type x3
 integer   ww0
 integer::w(5,5)
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
type y3
 integer   ww0
 integer,pointer::w(:,:)
end type
type y2
 integer   ww0
 type(y3)::ww1
 integer   ww2
end type
type y1
 integer   w0
 type(y2)::w1
 integer   w2
end type
type (y1)::t
contains
subroutine s(t,i)
integer,pointer::f(:,:)
type (x1)::vp
type (y1)::t
pointer(ip,vp)
ip=loc(v)
allocate(f(5,5));f=a
call sub(t%w1%ww1%w,vp%w1%ww1%w,i,f)
call sub2(vp%w1%ww1%w,i,f,t%w1%ww1%w)
end subroutine
subroutine sub(y,w,i,f)
integer w(*),f(*),y(*)
  if (any((/f(1:25)/)/=(/(k,k=1,25)/)))print *,'error-4',i
  if (any((/w(1:25)/)/=(/(k,k=1,25)/)))print *,'error-3',i
if (i==1) then
  if (any((/y(1:25)/)/=(/(k,k=1,25)/)))print *,'error-9',i
else 
  if (any((/y(1:15)/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-d',i
endif
end subroutine
subroutine sub2(w,i,f,y)
integer w(*),f(*),y(*)
  if (any((/f(1:25)/)/=(/(k,k=1,25)/)))print *,'error-4',i
  if (any((/w(1:25)/)/=(/(k,k=1,25)/)))print *,'error-3',i
if (i==1) then
  if (any((/y(1:25)/)/=(/(k,k=1,25)/)))print *,'error-9',i
else 
  if (any((/y(1:15)/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-d',i
endif
end subroutine
end
use m1
v%w1%ww1%w= a
t%w1%ww1%w=>a
call s(t,1)
t%w1%ww1%w=>a(::2,:)
call s(t,2)
print *,'pass'
end

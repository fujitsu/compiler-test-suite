module m1
character(len=2),parameter::z(25)=(/&
'01','02','03','04','05','06','07','08','09','10',&
'11','12','13','14','15','16','17','18','19','20',&
'21','22','23','24','25'&
/)
character(len=2),parameter::y(15)=(/&
'01','03','05','06','08','10',&
'11','13','15','16','18','20',&
'21','23','25'&
/)
character(len=2),target::a(5,5)=reshape(z,(/5,5/))
type x
 character(2),pointer::w(:,:)
end type
type (x)::v
type y3
 character(2),pointer::w1
 character(2),pointer::w2(:,:)
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
character(2),pointer::f(:,:)
allocate(f(5,5));f=a
call sub(v%w,i,f,t%w1%w1%w2)
end subroutine
subroutine sub(w,i,f,nm)
character(*) w(*),f(*),nm(*)
  if (any((/f(1:25)/)/=z))print *,'error-4',i
if (i==1) then
  if (any((/w(1:25)/)/=z))print *,'error-3',i
  if (any((/nm(1:25)/)/=z))print *,'error-5',i
else 
  if (any((/w(1:15)/)/=y))print *,'error-c',i
  if (any((/nm(1:15)/)/=y))print *,'error-d',i
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

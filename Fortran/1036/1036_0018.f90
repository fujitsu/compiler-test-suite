module m1
 type t
    integer,pointer::a(:,:)
 end type
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
integer       ::y(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
integer,allocatable::z(:,:)
contains
subroutine s(x,i,y,z)
type (t)::x
integer::y(:,:)
integer,allocatable::z(:,:)
call sub(x%a,y,z,i)
end subroutine
subroutine sub(x,y,z,i)
integer x(*)
integer,dimension(:,:)::y
integer,allocatable,dimension(:,:)::z
  if (any((/z/)/=(/(k,k=1,25)/)))print *,'error-3',i
if (i==1) then
 j=1
 jj=25
  if (any(x(1:jj)/=(/(k,k=1,25,j)/)))print *,'error-1',i
  if (any((/y/)/=(/(k,k=1,25,j)/)))print *,'error-2',i
else 
 j=2
 jj=15
  if (any(x(1:jj)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-a',i
  if (any((/y/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-b',i
endif
end subroutine
end
use m1
type (t)::var
var%a=> a
allocate(z(5,5))
z=a
call s(var,1,y,z)
var%a=> a(1:5:2,:)
call s(var,2,y(::2,:),z)
print *,'pass'
end

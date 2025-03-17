module m1
integer,pointer::w(:,:)
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
integer       ::x(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
integer       ::y(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
integer,allocatable::z(:,:)
contains
subroutine s(w,x,i,y,z)
integer::x(:,:)
integer::y(:,:)
integer,allocatable::z(:,:)
integer,pointer    ::w(:,:)
call sub(w,x,y,z,i)
end subroutine
subroutine sub(w,x,y,z,i)
integer x(*)
integer,dimension(:,:)::y
integer,allocatable,dimension(:,:)::z
integer,pointer    ,dimension(:,:)::w
  if (any((/z/)/=(/(k,k=1,25)/)))print *,'error-3',i
if (i==1) then
 j=1
 jj=25
  if (any(x(1:jj)/=(/(k,k=1,25,j)/)))print *,'error-1',i
  if (any((/y/)/=(/(k,k=1,25,j)/)))print *,'error-2',i
  if (any((/w/)/=(/(k,k=1,25,j)/)))print *,'error-3',i
else 
 j=2
 jj=15
  if (any(x(1:jj)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-a',i
  if (any((/y/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-b',i
  if (any((/w/)/=(/1,3,5,6,8,10,11,13,15,16,18,20,21,23,25/)))print *,'error-c',i
endif
end subroutine
end
use m1
w=> a
allocate(z(5,5))
z=a
call s(w,x,1,y,z)
w=> a(1:5:2,:)
call s(w,x(::2,:),2,y(::2,:),z)
print *,'pass'
end

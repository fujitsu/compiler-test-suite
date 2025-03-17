module m1
integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
type x
integer,pointer::w(:,:)
end type
type (x)::v
contains
subroutine s(v,i)
type(x)::v
integer,pointer::f(:,:)
allocate(f(5,5));f=a
call sub(v%w,i,f,a(2:,1),i+1,10,i+i+1)
end subroutine
subroutine sub(w,i,f,ab,ie,ic,ipp)
integer w(*),f(*),ab(*)
  if (ic/=10)print *,'error-8',i
  if (ie/=i+1)print *,'error-7',i
  if (ipp/=i*2+1)print *,'error-8',i
  if (any((/ab(1:4)/)/=(/(k,k=2,5)/)))print *,'error-6',i
  if (any((/f(1:25)/)/=(/(k,k=1,25)/)))print *,'error-4',i
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

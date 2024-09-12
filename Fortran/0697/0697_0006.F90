module m
integer,parameter::kk=8,nn=4
end
subroutine t(i)
use m
type x
  integer::c
end type
type(x)::a1(2),a2(i)
type(x),parameter::a3(2)=(/x(1),x(2)/)
type(x)::s1
type(x),parameter::s3=x(1)
integer,parameter::ix=sizeof(a3)
integer,parameter::iy=kind(sizeof(a3))

call chk(sizeof(a1))
if (kind(sizeof(a1))/=kk)print *,'error-01'
if (kind(sizeof(a2))/=kk)print *,'error-02'
if (kind(sizeof(a3))/=kk)print *,'error-03'
if (sizeof(a1)/=2*nn)print *,'error-11'
if (sizeof(a2)/=2*nn)print *,'error-12'
if (sizeof(a3)/=2*nn)print *,'error-13'
if (ix/=2*nn)print *,'error-21'
if (iy/=kk)print *,'error-22'
contains
subroutine chk(k)
integer(kind=kk) k
if (k/=2*nn)print *,'error-31'
end subroutine
end
call t(2)
print *,'pass'
end

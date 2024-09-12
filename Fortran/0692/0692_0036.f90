subroutine t(i)
type x
  integer::c
end type
type(x)::a1(2),a2(i)
type(x),parameter::a3(2)=(/x(1),x(2)/)
type(x)::s1
type(x),parameter::s3=x(1)
integer,parameter::ix=size(a3)
integer,parameter::iy=kind(size(a3))

if (kind(size(a1))/=4)print *,'error-01'
if (kind(size(a2))/=4)print *,'error-02'
if (kind(size(a3))/=4)print *,'error-03'
if (size(a1)/=2)print *,'error-11'
if (size(a2)/=2)print *,'error-12'
if (size(a3)/=2)print *,'error-13'
if (ix/=2)print *,'error-21'
if (iy/=4)print *,'error-22'
end
call t(2)
print *,'pass'
end

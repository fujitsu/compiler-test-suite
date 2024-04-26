module m1
integer(4),parameter::z=16
real(z),parameter:: c11=0.0_z
real(z),parameter:: c12=-0.1_z
contains
logical function chk(a,xsign) 
b=-a
if (xsign(1.,b)< 0) then 
 chk= .true.
else
 chk= .false.
endif
end function
end
subroutine s1(c01,c02,c03)
use m1
implicit real(z)(c)
real(z),parameter:: c13=c11/c12
intrinsic sign
c03=c01/c02
c23=c11/c12
c33=c01/c12
if (chk(0.,sign))then
 if (sign(1.0,c03)>0.0)print *,3001
 if (sign(1.0,c13)>0.0)print *,3002
 if (sign(1.0,c23)>0.0)print *,3003
 if (sign(1.0,c33)>0.0)print *,3004
endif
end
use m1
implicit real(z)(c)
call       s1(c11,c12,c13)
print *,'pass'
end




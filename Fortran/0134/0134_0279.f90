module m1
integer(4),parameter::x=4,y=8,z=16
real(4),parameter:: a11=0.0_x
real(4),parameter:: a12=-0.1_x
real(y),parameter:: b11=0.0_y
real(y),parameter:: b12=-0.1_y
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
subroutine s1(a01,a02,a03,b01,b02,b03,c01,c02,c03)
use m1
implicit real(y)(b),real(z)(c)
real(x),parameter:: a13=a11/a12
real(y),parameter:: b13=b11/b12
real(z),parameter:: c13=c11/c12
intrinsic sign
a03=a01/a02
a23=a11/a12
a33=a01/a12
b03=b01/b02
b23=b11/b12
b33=b01/b12
c03=c01/c02
c23=c11/c12
c33=c01/c12
if (chk(0.,sign))then
 if (sign(1.0,a03)>0.0)print *,1001
 if (sign(1.0,a13)>0.0)print *,1002
 if (sign(1.0,a23)>0.0)print *,1003
 if (sign(1.0,a33)>0.0)print *,1004
 if (sign(1.0,b03)>0.0)print *,2001
 if (sign(1.0,b13)>0.0)print *,2002
 if (sign(1.0,b23)>0.0)print *,2003
 if (sign(1.0,b33)>0.0)print *,2004
 if (sign(1.0,c03)>0.0)print *,3001
 if (sign(1.0,c13)>0.0)print *,3002
 if (sign(1.0,c23)>0.0)print *,3003
 if (sign(1.0,c33)>0.0)print *,3004
endif
end
use m1
implicit real(y)(b),real(z)(c)
call       s1(a11,a12,a13,b11,b12,b13,c11,c12,c13)
print *,'pass'
end




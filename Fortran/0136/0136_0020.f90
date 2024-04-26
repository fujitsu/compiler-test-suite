call r_4
call r_8
call r_16
print *,'pass'
contains
subroutine r_4
use ieee_arithmetic 
real::x,y
x=1.0
y=2.0
if(.not.ieee_support_datatype(x)) print *,'no support'
if(ieee_copy_sign(x=x,y=y)/=1.0) print *,'err1'
if(ieee_copy_sign(y=y,x=x)/=1.0) print *,'err2'
if(ieee_copy_sign(X=x,Y=y)/=1.0) print *,'err3'
if(ieee_copy_sign(Y=y,X=x)/=1.0) print *,'err4'
end subroutine

subroutine r_8
use ieee_arithmetic 
real(8)::x,y
x=1.0d0
y=2.0d0
if(.not.ieee_support_datatype(x)) print *,'no support'
if(ieee_copy_sign(x=x,y=y)/=1.0d0) print *,'err1'
if(ieee_copy_sign(y=y,x=x)/=1.0d0) print *,'err2'
if(ieee_copy_sign(X=x,Y=y)/=1.0d0) print *,'err3'
if(ieee_copy_sign(Y=y,X=x)/=1.0d0) print *,'err4'
end subroutine

subroutine r_16
use ieee_arithmetic 
real(16)::x,y
x=1.0q0
y=2.0q0
if(.not.ieee_support_datatype(x)) print *,'no support'
if(ieee_copy_sign(x=x,y=y)/=1.0q0) print *,'err1'
if(ieee_copy_sign(y=y,x=x)/=1.0q0) print *,'err2'
if(ieee_copy_sign(X=x,Y=y)/=1.0q0) print *,'err3'
if(ieee_copy_sign(Y=y,X=x)/=1.0q0) print *,'err4'
end subroutine

end

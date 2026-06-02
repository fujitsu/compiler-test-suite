MODULE LINK_TO_C_VARS
USE, INTRINSIC :: ISO_C_BINDING
INTEGER(C_INT), BIND(C,name='yy_c_E_ext') :: C_EXTERN
INTEGER(C_LONG) :: C2
BIND(C, NAME='yy_myVariable') :: C2
COMMON /COM/ R, S
REAL(C_FLOAT) :: R, S, T
BIND(C,name='yy_cOm') :: /COM/
BIND(C,name='yy_sINGLe') :: /SINGLE/
COMMON /SINGLE/ T
END MODULE LINK_TO_C_VARS
module m2
contains
subroutine pros() bind(c,name='yy_Proc')
entry prot() bind(c,name='yy_Proc2')
end subroutine
end
use m2
use link_to_c_vars
c_extern = 2
c2 = 3
r= 4.0
s= 5.0
t =6.0
if (c_extern/=2)print *,'fail'
if (c2/=3)print *,'fail'
if (abs(r-4.0)>0.0001)print *,'fail'
if (abs(s-5.0)>0.0001)print *,'fail'
if (abs(t-6.0)>0.0001)print *,'fail'
call pros()
call prot()
print *,'pass'
end

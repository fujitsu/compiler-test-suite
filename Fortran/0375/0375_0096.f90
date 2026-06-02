MODULE LINK_TO_C_VARS
INTEGER, BIND(C,name='yy_N_01') :: C_EXTERN
INTEGER :: C2
BIND(C, NAME='yy_N_02') :: C2
COMMON /COM/ R, S
REAL :: R, S, T
BIND(C,name='yy_N_03') :: /COM/
BIND(C,name='yy_N_04') :: /SINGLE/
COMMON /SINGLE/ T
END MODULE LINK_TO_C_VARS
module m2
contains
subroutine pros() bind(c,name='yy_N_10')
entry prot() bind(c,name='yy_N_05')
end subroutine
end
block data
BIND(C,name='yy_N_07') :: /tin/
COMMON /tin/ i
data i/8/
end
use m2
use link_to_c_vars
BIND(C,name='yy_N_06') :: /SIN/
COMMON /SIN/ y
BIND(C,name='yy_N_07') :: /tin/
COMMON /tin/ iiii
interface
subroutine xpros() bind(c,name='yy_N_08')
end subroutine
subroutine xprot() bind(c,name='yy_N_09')
end subroutine
end interface
c_extern = 2
c2 = 3
r= 4.0
s= 5.0
t =6.0
y =7.0
if (c_extern/=2)print *,'fail'
if (c2/=3)print *,'fail'
if (abs(r-4.0)>0.0001)print *,'fail'
if (abs(s-5.0)>0.0001)print *,'fail'
if (abs(t-6.0)>0.0001)print *,'fail'
if (abs(y-7.0)>0.0001)print *,'fail'
if (iiii/=8)print *,'fail'
call pros()
call prot()
call xpros()
call xprot()
print *,'pass'
end
subroutine xpros() bind(c,name='yy_N_08')
entry xprot() bind(c,name='yy_N_09')
end subroutine

call aaa
call bbb
print *,'pass'
contains
subroutine aaa
use, intrinsic :: ieee_arithmetic
if (ieee_support_datatype(1.0)) then
if(ieee_rem(4.0,3.0)/=ieee_rem(y=3.0,x=4.0)) print *,'err1' 
if(ieee_rem(4.0d0,3.0)/=ieee_rem(y=3.0,x=4.0d0)) print *,'err2'  
if(ieee_rem(4.0,3.0q0)/=ieee_rem(y=3.0q0,x=4.0d0)) print *,'err3'

if(ieee_scalb(1.0,2)/=ieee_scalb(I=2,X=1.0)) print *,'err1'
if(ieee_scalb(1.0d0,2_1)/=ieee_scalb(I=2_2,X=1.0d0)) print *,'err2'
if(ieee_scalb(1.0q0,2_8)/=ieee_scalb(I=2_4,X=1.0q0)) print *,'err3'
else
print *,'IEEE no support'
endif
end subroutine
subroutine bbb
use, intrinsic :: ieee_arithmetic
if (ieee_support_datatype(1.0)) then
if(any(ieee_scalb(1.0,[2])/=ieee_scalb(I=[2],X=1.0))) print *,'err1'
if(any(ieee_scalb([1.0d0],2_1)/=ieee_scalb(I=2_2,X=[1.0d0]))) &
&  print *,'err2'
if(any(ieee_scalb([1.0q0],[2_8])/=ieee_scalb(I=[2_4],X=[1.0q0]))) &
&print *,'err3'
else
print *,'IEEE no support'
endif
end subroutine
end

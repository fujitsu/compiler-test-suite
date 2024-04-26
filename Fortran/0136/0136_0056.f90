call s1
call s2
call s3
print *,'pass'
end
subroutine s1
use, intrinsic :: ieee_arithmetic
real :: xx,yy
xx =  2.0
yy = -1.0
if (ieee_support_datatype(xx) .and. ieee_support_datatype(yy)) then
  xx = ieee_copy_sign(X=xx,Y=yy)
endif
if(xx.ne.-2.0) print *,'err1'
end
subroutine s2
use, intrinsic :: ieee_arithmetic
real :: x1,x2,y
x1=0.0
x2=0.0
y =  1.0
if (ieee_support_datatype(x1)) then
   x1 = ieee_value(x1, ieee_negative_inf) 
   x2 = ieee_copy_sign(x2,y)              
endif
if(x1==-x2) print *,'err2'
end
subroutine s3
use, intrinsic :: ieee_arithmetic
real(16) :: x1(5)
real(8) :: y1
x1 =  10.0
y1 = -1.0
if (ieee_support_datatype(x1) .and. ieee_support_datatype(y1)) then
  x1 = ieee_copy_sign(Y=y1,X=x1)
endif
if(any(x1/=[(-10.0q0,i=1,5)])) print *,'err3'
end


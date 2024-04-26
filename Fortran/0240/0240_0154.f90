use, intrinsic :: ieee_arithmetic
real :: result,x
integer ::i
x = 1.0
i = 2
if (ieee_support_datatype(x)) then
result = ieee_scalb(x,i)
end if
print *,'pass'
end

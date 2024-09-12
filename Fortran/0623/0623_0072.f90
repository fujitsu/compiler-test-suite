use, intrinsic :: ieee_arithmetic
real :: x,y
logical result
x = 1.0
y = 2.0
if (ieee_support_datatype(x) .and. ieee_support_datatype(y)) then
  result = ieee_unordered(x,y)
end if
print *,"pass"
end

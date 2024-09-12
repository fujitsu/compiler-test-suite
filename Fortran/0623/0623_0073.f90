use, intrinsic :: ieee_arithmetic
real ::result,x
type(ieee_class_type) class
class = ieee_positive_normal
x=1.0
if (ieee_support_datatype(x)) then
  result = ieee_value(x,class)
end if
print *,"pass"
end

use, intrinsic :: ieee_arithmetic
type(ieee_class_type) ::result
real :: x
x = -1.0
if(ieee_support_datatype(x)) then
result = ieee_class(x)
end if
print *,"pass"
end

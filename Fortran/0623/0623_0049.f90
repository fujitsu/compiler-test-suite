use, intrinsic :: ieee_arithmetic
type(ieee_class_type) ::result
real :: x
x = -1.0
if (ieee_support_datatype(x)) then
  result = ieee_class(x)
end if
if (result .eq. ieee_negative_normal) then
  print *, "negative_normal"
end if
print *,'pass'
end

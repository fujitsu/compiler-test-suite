module ieee_m
  USE, INTRINSIC :: IEEE_ARITHMETIC
end module ieee_m
print *,'pass'
contains
subroutine s1
use ieee_m
logical(4)::x3,x33
logical(8)::x4,x44
logical(4)::y3(5),y33(5)
logical(8)::y4(5),y44(5)
call IEEE_SET_FLAG(IEEE_INVALID,x3)
call IEEE_SET_FLAG(IEEE_INVALID,x4)
call IEEE_SET_FLAG(IEEE_INVALID,y3)
call IEEE_SET_FLAG(IEEE_INVALID,y4)
x33=x3
x44=x4
y33=y3
y44=y4
end subroutine s1
subroutine s2
use ieee_m
logical(4)::x3,x33
logical(8)::x4,x44
logical(4)::y3(5),y33(5)
logical(8)::y4(5),y44(5)
call IEEE_SET_FLAG(IEEE_OVERFLOW,x3)
call IEEE_SET_FLAG(IEEE_OVERFLOW,x4)
call IEEE_SET_FLAG(IEEE_OVERFLOW,y3)
call IEEE_SET_FLAG(IEEE_OVERFLOW,y4)
x33=x3
x44=x4
y33=y3
y44=y4
end subroutine s2
end

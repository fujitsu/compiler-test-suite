subroutine s1
type x
  integer::x1=1
  integer::x2
end type
type(x),parameter::v=x(x2=2)
if (v%x1/=1)print *,101
if (v%x2/=2)print *,102
end
call s1
print *,'pass'
end

call s0()
print *,'pass'
end
subroutine s0
type x
 integer::x=1
end type
type(x)::y
if (y%x/=1)print *,'error'
end

subroutine s(x,k)
use IEEE_arithmetic
integer::x
integer:: a( ieee_selected_real_kind( x, k) )
if (size(a)/=4) print *,201
end
call s(4,30)
print *,'pass'
end

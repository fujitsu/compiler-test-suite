subroutine s(x)
use IEEE_arithmetic
integer:: a( ieee_selected_real_kind( 4, 30) )
if (size(a)/=4) print *,201
end
call s(1.0)
print *,'pass'
end

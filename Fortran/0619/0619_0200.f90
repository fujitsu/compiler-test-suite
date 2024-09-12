subroutine ss
use ieee_arithmetic

if (ieee_selected_real_kind(10,10)/=8) print *,101
end
call ss
print *,'pass'
end

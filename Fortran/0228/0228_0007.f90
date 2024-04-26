module m1
interface xxx_W
subroutine xxx_W(size)
  integer(KIND=4), intent(in) :: size
end subroutine xxx_W
end interface
interface xxx_Q
subroutine xxx_Q(disp_unit)
  integer, intent(in) :: disp_unit
end subroutine xxx_Q
end interface
interface xxx_R
subroutine xxx_R(disp_unit)
  integer, intent(in) :: disp_unit
end subroutine xxx_R
end interface
end

module m20
use m1
private
public::xxx_W,xxx_Q,xxx_R
end

use m20,only:xxx_W
call xxx_W(1)
print *,'pass'
end
subroutine xxx_W(size)
  integer(KIND=4), intent(in) :: size
if (size/=1)print *,1001
end subroutine xxx_W


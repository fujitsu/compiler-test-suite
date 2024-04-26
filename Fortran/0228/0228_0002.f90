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
end
module m20
use m1
private
public::xxx_W
end
module m21
use m1
private
public::xxx_Q
end
module m30
use m20
private
public::xxx_W
end
module m31
use m21
private
public::xxx_Q
end
module m40
use m30
private
public::xxx_W
end
module m41
use m31
private
public::xxx_Q
end
use m40
use m41
call xxx_W(1)
call xxx_Q(2)
print *,'pass'
end
subroutine xxx_W(size)
  integer(KIND=4), intent(in) :: size
if (size/=1)print *,1001
end subroutine xxx_W
subroutine xxx_Q(disp_unit)
  integer, intent(in) :: disp_unit
if (disp_unit/=2) print *,2001
end subroutine xxx_Q


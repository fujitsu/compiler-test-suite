module vector2
interface JT_Norm
  module procedure Norm
end interface
contains
function Norm(inorm, x)
  real :: norm
  norm=inorm+x
  return
end function Norm
end module vector2
module JT_Full_module
interface JT_Norm
  module procedure Norm
end interface
contains
real function norm()
norm=20.
end function norm
subroutine CheckConvergence ()
  use vector2, only: JT_Norm
  if (abs(JT_Norm(1,1.0)-2.0)>0.0001)print *,'error-1'
end subroutine CheckConvergence
subroutine dd
if (abs(norm()-20.)>0.0001)print *,'error-2'
end subroutine dd
end module JT_Full_module

use JT_Full_module
call CheckConvergence
call dd
if (abs(JT_Norm()-20.)>0.0001)print *,'error-3'
print *,'pass'
end

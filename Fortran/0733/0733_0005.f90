module vector2
interface Test_Norm
  module procedure Norm
end interface

contains

function Norm(inorm, x)
  real :: norm
  norm=0
  return
end function Norm
end module vector2

module Test_Full_module
interface Test_Norm
  module procedure Norm
end interface

contains

real function norm()
end function norm

subroutine CheckConvergence ()
  use vector2, only: Test_Norm
end subroutine CheckConvergence
end module Test_Full_module
print *,'pass'
end

module pos
type :: po
real :: x,y
end type po
interface
real module function pd (a,b)
type(po), intent(in) :: a,b
end function pd
end interface
end module pos

submodule (pos) pos_a
contains
real module function pd (a,b)
type(po), intent(in) :: a,b
pd = sqrt((a%x-b%x)**2+(a%y-b%y)**2)
end function pd
end submodule pos_a

use pos
type(po):: z1,z2
z1%x=3.0
z1%y=3.0
z2%x=2.0
z2%y=2.0
if (abs(pd(z1,z2) - 1.414)>0.1) print *,301
print *,'pass'
end

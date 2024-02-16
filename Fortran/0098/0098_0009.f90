module mm1
contains
end module
module mm2
integer :: i2=1
contains
 subroutine sub()
 i2 = 2
 end subroutine
end module
module mm3
contains
end module
use mm1;use mm2;use mm3
if(i2/=1) print *,101,i2
print *,"Pass"
contains
end

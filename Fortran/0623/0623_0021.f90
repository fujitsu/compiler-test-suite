module mod
type ty
 integer :: i
end type
type str
type(ty),allocatable:: ptr2(:)
end type
end 

module mod2
use mod
type(str) :: sss,vvv,xxx
end
module mod3
use mod2,sss1=>sss
use mod2,sss3=>sss
use mod2,sss4=>sss
use mod2,sss5=>sss
end

use mod
type(str) :: sss2
allocate(sss2%ptr2(10),source=(/(ty(1),i=1,10)/))
if (1.eq.2) print *,sss2%ptr2(1)%i
print *,'pass'
end

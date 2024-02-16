module m1
integer :: ii=2
contains
end module

use m1
if(ii/=2) print *,101
print *,"Pass"
end

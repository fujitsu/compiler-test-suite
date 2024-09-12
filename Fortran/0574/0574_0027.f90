module m1
interface inr
module procedure subb,subb2,subb3
end interface
contains
function subb()
integer :: subb
subb=1
end function

function subb2(d2)
integer,allocatable :: d2
integer :: subb2
subb2= d2+1
end function

function subb3(d33)
integer :: subb3
integer,pointer :: d33
d33=5
subb3=d33
end function
end module

use m1 
integer,allocatable :: ii
integer,pointer :: i2
Allocate(ii,i2)
ii = 9
i2 = 9
if(inr() /=1) print *,101
if(inr(ii) /=10) print *,102
if(inr(i2) /=5) print *,103
print *,"Pass"
end

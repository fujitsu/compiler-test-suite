module mod1
integer::ii=4
contains
subroutine sub(d1)
integer::d1
integer::ii=1
block
integer::d1=3
integer::arr(ii,d1)
print*,SIZE(arr)
end block
end subroutine
end module

use mod1
call sub(2)
end

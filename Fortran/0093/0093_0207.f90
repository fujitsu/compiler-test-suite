module m1

type ty
complex::cmp
end type ty

type, extends(ty):: ty1
real :: rr,ii
end type ty1

end module m1

use m1
implicit none
type (ty1)::obj
obj%cmp = (3,4)
obj%rr =  obj%cmp%re
obj%ii =  obj%cmp%im

if (sizeof(obj%cmp%re) .ne. 4) print*,101
if (obj%cmp%re .ne. 3) print*,102
if (obj%cmp%im .ne. 4) print*,103
if (obj%rr .ne.     3) print*,104
if (obj%ii .ne.     4) print*,105
PRINT*,"PASS"

end

module m1

type ty
complex::cmp
end type ty

end module m1

use m1
implicit none
type (ty)::obj

obj%cmp = (3,4)
obj%cmp%re = 8
obj%cmp%im = 9
if (sizeof(obj%cmp%re) .ne. 4) print*,101
if (obj%cmp%re .ne. 8) print*,102
if (obj%cmp%im .ne. 9) print*,103
if (obj%cmp .ne. (8,9)) print*,104
PRINT*,"PASS"
end

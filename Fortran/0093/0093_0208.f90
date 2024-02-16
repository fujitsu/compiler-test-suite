module m1
type ty
complex,pointer::cmp(:)
real,allocatable::rr(:),ii(:)
end type ty
end module m1

use m1
implicit none
type (ty)::obj 
allocate (obj%cmp(3))

obj%cmp = (3.45,5.67)

allocate(obj%rr,source = obj%cmp%re)
allocate(obj%ii,source = obj%cmp%im)

if (size(obj%cmp%re) .ne. 3) print*,101
if (any(obj%cmp%re .ne. 3.45)) print*,102
if (any(obj%cmp%im .ne. 5.67)) print*,103
if (any(obj%rr .ne.     3.45)) print*,104
if (any(obj%ii .ne.     5.67)) print*,105
PRINT*,"PASS"
end

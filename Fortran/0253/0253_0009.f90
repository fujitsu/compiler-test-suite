module m1
type ty
character(LEN=7)::ch
end type
contains
subroutine sub(dmy)
type(ty)::dmy
block
open(file='fort.12',unit=10)
write(10,fmt='(G0)')"fortran"
close(10)
  block
  open(file='fort.12',unit=10)
  read(10,fmt='(A7)')dmy%ch
  end block
end block
end subroutine
end module

program main
use m1
type(ty)::obj
call sub(obj)
if (obj%ch/="fortran")print*,101
print '(G0)',"Pass"
end program

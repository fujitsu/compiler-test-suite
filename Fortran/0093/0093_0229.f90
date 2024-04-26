PROGRAM main
type ty
complex::act(2) = (6.43,3.23)
end type ty

type (ty),asynchronous::obj

call sub(obj%act(1)%im)
contains
subroutine sub(dmy)
real,asynchronous :: dmy
if (dmy .ne. 3.23) print*,101
PRINT*,"PASS"
end subroutine
end 


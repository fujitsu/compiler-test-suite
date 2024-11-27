PROGRAM main
type ty
complex::act(2)
end type ty

type (ty),asynchronous::obj

call sub(obj%act%re)
contains
subroutine sub(dmy)
real,asynchronous :: dmy(2)
end subroutine
end 


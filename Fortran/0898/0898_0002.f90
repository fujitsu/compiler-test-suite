PROGRAM main
type ty
complex::act(2)
end type ty

type (ty),asynchronous::obj(3)

call sub(obj(2)%act%re)
contains
subroutine sub(dmy)
real,asynchronous :: dmy(2)
end subroutine
end 


program dse
type ty
complex::act(4)
end type ty

type (ty),asynchronous::obj
call sub(obj%act(1:4:2)%re)
contains
subroutine sub(dmy)
real,asynchronous :: dmy(2)
end subroutine
end


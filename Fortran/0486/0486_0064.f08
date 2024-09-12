type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
end type

class(ty),allocatable :: obj1
type(tt),pointer :: obj2

allocate( obj2 )
obj1 = obj2

print *,'pass'
end

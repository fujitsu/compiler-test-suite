type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
end type

class(ty),allocatable :: obj1(:)

allocate(obj1(1))
obj1 = obj1

print *,'pass'
end

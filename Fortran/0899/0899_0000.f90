type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg
end type

type ts
class(*),allocatable :: obj1(:)
class(ty),allocatable :: obj2(:)
end type

type(ts) :: objTT, objTS

allocate(ty::objTT%obj1(3))
allocate(tt::objTS%obj2(3))

objTT%obj1 = objTS%obj2
end

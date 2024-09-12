type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
end type

type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:)

allocate(obj2(1))
obj1 = obj2
if (.not.allocated(obj1)) print *,201

print *,'pass'
end

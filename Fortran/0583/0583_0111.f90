type ts
integer,allocatable :: ii
type(ts),allocatable :: o2
end type

type tt
integer,allocatable :: jj
type(tt),allocatable :: o3
type(ts) :: o1
end type

type ty
type(tt) :: cmp(3)
end type

type(ty) :: obj1
type(ty) :: obj2

call s1(obj1, obj2)
print*,"PASS"

contains
subroutine s1(dmy1, dmy2)
type(ty) :: dmy1
type(ty),intent(out) :: dmy2

dmy2 = dmy1
end subroutine
end

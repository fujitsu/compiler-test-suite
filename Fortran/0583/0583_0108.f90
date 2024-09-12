type ts
integer,allocatable :: ii
type(ts),allocatable :: o2
end type

type tt
type(ty),allocatable :: o3
type(ts) :: o1
end type

type ty
type(tt) :: cmp
end type

call s1

contains
subroutine s1()
type(ty) :: obj1
type(ty) :: obj2

allocate(obj1%cmp%o1%ii)
allocate(obj1%cmp%o1%o2)
allocate(obj1%cmp%o1%o2%ii)
allocate(obj1%cmp%o1%o2%o2)
allocate(obj1%cmp%o1%o2%o2%ii)
allocate(obj1%cmp%o1%o2%o2%o2)
allocate(obj1%cmp%o1%o2%o2%o2%ii)

obj1%cmp%o1%ii = 10
obj1%cmp%o1%o2%ii = 11
obj1%cmp%o1%o2%o2%ii = 12
obj1%cmp%o1%o2%o2%o2%ii = 13

obj2 = obj1

obj1%cmp%o1%ii = 20
obj1%cmp%o1%o2%ii = 21
obj1%cmp%o1%o2%o2%ii = 22
obj1%cmp%o1%o2%o2%o2%ii = 23

if (obj2%cmp%o1%ii /= 10) print*,101
if (obj2%cmp%o1%o2%ii /= 11) print*,102
if (obj2%cmp%o1%o2%o2%ii /= 12) print*,103
if (obj2%cmp%o1%o2%o2%o2%ii /= 13) print*,104
print*,"PASS"
end subroutine
end

type tt
integer,allocatable :: o2
type(tt),allocatable :: o1
end type

type ty
integer:: o2
type(tt) :: cmp(2)
end type

call s1

contains
subroutine s1()
type(ty) :: obj1
type(ty) :: obj2

allocate(obj1%cmp(2)%o1)
allocate(obj1%cmp(2)%o1%o1)
allocate(obj1%cmp(2)%o1%o1%o1)

allocate(obj1%cmp(2)%o1%o2)
allocate(obj1%cmp(2)%o1%o1%o2)
allocate(obj1%cmp(2)%o1%o1%o1%o2)

obj1%cmp(2)%o1%o2 = 10
obj1%cmp(2)%o1%o1%o2 = 11
obj1%cmp(2)%o1%o1%o1%o2 = 12

obj2 = obj1

obj1%cmp(2)%o1%o2 = 21
obj1%cmp(2)%o1%o1%o2 = 22
obj1%cmp(2)%o1%o1%o1%o2 = 23

if (obj2%cmp(2)%o1%o2 /= 10) print*,101, obj2%cmp(2)%o1%o2
if (obj2%cmp(2)%o1%o1%o2 /= 11) print*,102, obj2%cmp(2)%o1%o1%o2
if (obj2%cmp(2)%o1%o1%o1%o2 /= 12) print*,103, obj2%cmp(2)%o1%o1%o1%o2
print*,"PASS"
end subroutine
end

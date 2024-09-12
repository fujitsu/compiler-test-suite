type ts
integer,allocatable :: ii
type(ts),allocatable :: o2
end type

type tt
integer :: jj
type(tt),allocatable :: o3
type(ts) :: o1
end type

type ty
type(tt) :: cmp(3)
end type

call s1

contains
subroutine s1()
type(ty) :: obj1
type(ty) :: obj2

allocate(obj1%cmp(2)%o1%ii)
allocate(obj1%cmp(2)%o1%o2)
allocate(obj1%cmp(2)%o1%o2%ii)
allocate(obj1%cmp(2)%o1%o2%o2)
allocate(obj1%cmp(2)%o1%o2%o2%ii)
allocate(obj1%cmp(2)%o1%o2%o2%o2)
allocate(obj1%cmp(2)%o1%o2%o2%o2%ii)

allocate(obj1%cmp(2)%o3)
allocate(obj1%cmp(2)%o3%o1%ii)
allocate(obj1%cmp(2)%o3%o3)
allocate(obj1%cmp(2)%o3%o3%o1%ii)
allocate(obj1%cmp(2)%o3%o3%o1%o2)
allocate(obj1%cmp(2)%o3%o3%o1%o2%ii)
allocate(obj1%cmp(2)%o3%o3%o1%o2%o2)
allocate(obj1%cmp(2)%o3%o3%o1%o2%o2%ii)
allocate(obj1%cmp(2)%o3%o3%o1%o2%o2%o2)
allocate(obj1%cmp(2)%o3%o3%o1%o2%o2%o2%ii)

obj1%cmp(2)%o1%ii = 10
obj1%cmp(2)%o1%o2%ii = 11
obj1%cmp(2)%o1%o2%o2%ii = 12
obj1%cmp(2)%o1%o2%o2%o2%ii = 13

obj1%cmp(2)%o3%o1%ii = 14
obj1%cmp(2)%o3%o3%o1%ii = 15
obj1%cmp(2)%o3%o3%o1%o2%ii = 16
obj1%cmp(2)%o3%o3%o1%o2%o2%ii = 17
obj1%cmp(2)%o3%o3%o1%o2%o2%o2%ii = 18

obj2 = obj1

obj1%cmp(2)%o1%ii = 20
obj1%cmp(2)%o1%o2%ii = 21
obj1%cmp(2)%o1%o2%o2%ii = 22
obj1%cmp(2)%o1%o2%o2%o2%ii = 23

obj1%cmp(2)%o3%o1%ii = 24
obj1%cmp(2)%o3%o3%o1%ii = 25
obj1%cmp(2)%o3%o3%o1%o2%ii = 26
obj1%cmp(2)%o3%o3%o1%o2%o2%ii = 27
obj1%cmp(2)%o3%o3%o1%o2%o2%o2%ii = 28

if (obj2%cmp(2)%o1%ii /= 10) print*,101
if (obj2%cmp(2)%o1%o2%ii /= 11) print*,102
if (obj2%cmp(2)%o1%o2%o2%ii /= 12) print*,103
if (obj2%cmp(2)%o1%o2%o2%o2%ii /= 13) print*,104

if (obj2%cmp(2)%o3%o1%ii /= 14) print*,105
if (obj2%cmp(2)%o3%o3%o1%ii /= 15) print*,106
if (obj2%cmp(2)%o3%o3%o1%o2%ii /= 16) print*,107, obj2%cmp(2)%o3%o3%o1%o2%ii
if (obj2%cmp(2)%o3%o3%o1%o2%o2%ii /= 17) print*,108, obj2%cmp(2)%o3%o3%o1%o2%o2%ii
if (obj2%cmp(2)%o3%o3%o1%o2%o2%o2%ii /= 18) print*,109, obj2%cmp(2)%o3%o3%o1%o2%o2%o2%ii
print*,"PASS"
end subroutine
end

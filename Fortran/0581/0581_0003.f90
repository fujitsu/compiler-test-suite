type ty
integer,allocatable :: x1
integer :: x2
character(len=:),allocatable::ch(:)
end type

type tt
integer,allocatable :: x3
type(ty)::obj
end type

type ts
type(tt),allocatable :: obj1
type(tt),allocatable :: obj2
end type

type(ts)::base

allocate(base%obj1)
allocate(base%obj1%x3)
allocate(base%obj1%obj%x1)

allocate(base%obj2)
allocate(base%obj2%x3)
allocate(character(len=5)::base%obj2%obj%ch(2))

base%obj1%x3=11
base%obj1%obj%x2=12
base%obj1%obj%x1=13

base%obj2%x3=21
base%obj2%obj%x2=22
base%obj2%obj%ch="AAAAA"

base%obj1 = base%obj2

base%obj2%x3=31
base%obj2%obj%x2=32
base%obj2%obj%ch="BBBBB"

if(base%obj1%x3 /= 21) print*,201
if(base%obj1%obj%x2 /= 22) print*,202
if(any(base%obj1%obj%ch /= "AAAAA")) print*,203
if(allocated(base%obj1%obj%x1)) print*,204
print*,"PASS"
end

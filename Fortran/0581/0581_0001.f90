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

type(ts)::base(2)

allocate(base(1)%obj2)
allocate(base(1)%obj2%x3)
allocate(character(len=5)::base(1)%obj2%obj%ch(2))

base(1)%obj2%x3=21
base(1)%obj2%obj%x2=22
base(1)%obj2%obj%ch="AAAAA"

base(2)%obj1 = base(1)%obj2

base(1)%obj2%x3=31
base(1)%obj2%obj%x2=32
base(1)%obj2%obj%ch="BBBBB"

if(base(2)%obj1%x3 /= 21) print*,201
if(base(2)%obj1%obj%x2 /= 22) print*,202
if(any(base(2)%obj1%obj%ch /= "AAAAA")) print*,203
if(allocated(base(2)%obj1%obj%x1)) print*,204
print*,"PASS"
end

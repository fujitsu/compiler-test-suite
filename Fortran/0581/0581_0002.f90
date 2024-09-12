type ty
integer,allocatable :: x1
integer :: x2
character(len=:),allocatable::ch(:)
end type

type tt
integer,allocatable :: x3
type(ty)::obj
end type

type(tt),allocatable :: obj1,obj2

allocate(obj1)
allocate(obj1%x3)
allocate(obj1%obj%x1)

allocate(obj2)
allocate(obj2%x3)
allocate(character(len=5)::obj2%obj%ch(2))

obj1%x3=11
obj1%obj%x2=12
obj1%obj%x1=13

obj2%x3=21
obj2%obj%x2=22
obj2%obj%ch="AAAAA"

obj1 = obj2

obj2%x3=31
obj2%obj%x2=32
obj2%obj%ch="BBBBB"

if(obj1%x3 /= 21) print*,201
if(obj1%obj%x2 /= 22) print*,202
if(any(obj1%obj%ch /= "AAAAA")) print*,203
if(allocated(obj1%obj%x1)) print*,204
print*,"PASS"
end

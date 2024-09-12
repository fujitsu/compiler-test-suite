type ty1
character(len=:),allocatable :: ch1(:)
end type

type ty
type(ty1),allocatable :: obj1
type(ty1),allocatable :: obj2
type(ty1),allocatable :: obj3
end type

type (ty) :: obj

allocate(obj%obj3)
allocate(character(len=4)::obj%obj3%ch1(3))
obj%obj3%ch1 = "abcd"
call sub(obj)

if(len(obj%obj1%ch1) .ne. 4) print*,"121"
if(len(obj%obj2%ch1) .ne. 4) print*,"122"
if(any(obj%obj1%ch1 .ne. "abcd")) print*,"221"
if(any(obj%obj2%ch1 .ne. "abcd")) print*,"222"
if(sizeof(obj%obj1%ch1) .ne. 12) print*,"223"
if(sizeof(obj%obj2%ch1) .ne. 12) print*,"224"

deallocate(obj%obj1,obj%obj2,obj%obj3)
allocate(obj%obj3)
allocate(character(len=6)::obj%obj3%ch1(3))

obj%obj3%ch1 = "654321"
allocate(obj%obj1,obj%obj2,source=obj%obj3)
if(len(obj%obj1%ch1) .ne. 6) print*,"123"
if(len(obj%obj2%ch1) .ne. 6) print*,"124"
if(any(obj%obj1%ch1 .ne. "654321")) print*,"321"
if(any(obj%obj2%ch1 .ne. "654321")) print*,"322"
if(sizeof(obj%obj1%ch1) .ne. 18) print*,"323"
if(sizeof(obj%obj2%ch1) .ne. 18) print*,"324"
print*,"Pass"
contains
subroutine sub(dobj)
type(ty) :: dobj
allocate(dobj%obj1,dobj%obj2,source=dobj%obj3)
end subroutine
end

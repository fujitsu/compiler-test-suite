type ty
character(len=:),allocatable :: ch1(:)
character(len=:),allocatable :: ch2(:)
character(len=:),allocatable :: ch3(:)
end type

type(ty) :: obj
allocate(character(len=4)::obj%ch3(3))
obj%ch3 = "abcd"
call sub(obj)
if(len(obj%ch1) .ne. 4) print*,"121"
if(len(obj%ch2) .ne. 4) print*,"122"
if(any(obj%ch1 .ne. "abcd")) print*,"221"
if(any(obj%ch2 .ne. "abcd")) print*,"222"
if(sizeof(obj%ch1) .ne. 12) print*,"223"
if(sizeof(obj%ch2) .ne. 12) print*,"224"
deallocate(obj%ch1,obj%ch2,obj%ch3)
allocate(character(len=6)::obj%ch3(3))
obj%ch3 = "654321"
allocate(obj%ch1,obj%ch2,source=obj%ch3)
if(len(obj%ch1) .ne. 6) print*,"123"
if(len(obj%ch2) .ne. 6) print*,"124"
if(any(obj%ch1 .ne. "654321")) print*,"321"
if(any(obj%ch2 .ne. "654321")) print*,"322"
if(sizeof(obj%ch1) .ne. 18) print*,"323"
if(sizeof(obj%ch2) .ne. 18) print*,"324"
print*,"Pass"
contains
subroutine sub(dobj)
type(ty) :: dobj
allocate(dobj%ch1,dobj%ch2,source=obj%ch3)
end subroutine
end

type ty
character(len=:),allocatable :: ch1(:)
character(len=:),allocatable :: ch2(:)
character(len=:),allocatable :: ch3(:)
end type
character(len=:),allocatable :: ch4(:)

type(ty) :: obj
allocate(character(len=4)::obj%ch3(3))
obj%ch3 = "abcd"
call sub(obj,ch4)
if(len(obj%ch1) .ne. 4) print*,101
if(len(obj%ch2) .ne. 4) print*,102
if(len(ch4) .ne. 4) print*,103
if(any(obj%ch1 .ne. "abcd")) print*,104
if(any(obj%ch2 .ne. "abcd")) print*,105
if(any(ch4 .ne. "abcd")) print*,106
if(sizeof(obj%ch1) .ne. 12) print*,107
if(sizeof(obj%ch2) .ne. 12) print*,108
if(sizeof(ch4) .ne. 12) print*,109
deallocate(obj%ch1,obj%ch2,obj%ch3,ch4)
allocate(character(len=6)::obj%ch3(3))
obj%ch3 = "654321"
allocate(obj%ch1,ch4,obj%ch2,source=obj%ch3)
if(len(obj%ch1) .ne. 6) print*,201
if(len(obj%ch2) .ne. 6) print*,202
if(len(ch4) .ne. 6) print*,203
if(any(obj%ch1 .ne. "654321")) print*,204
if(any(obj%ch2 .ne. "654321")) print*,205
if(any(ch4 .ne. "654321")) print*,206
if(sizeof(obj%ch1) .ne. 18) print*,207
if(sizeof(obj%ch2) .ne. 18) print*,208
if(sizeof(ch4) .ne. 18) print*,209
print*,"Pass"
contains
subroutine sub(dobj,c4)
type(ty) :: dobj
character(len=:),allocatable :: c4(:)
allocate(dobj%ch1,c4,dobj%ch2,source=obj%ch3)
end subroutine
end

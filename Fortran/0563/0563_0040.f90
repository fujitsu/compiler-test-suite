TYPE t1
integer :: ii1(2)
character(len=:), allocatable ::ch1
END TYPE

TYPE ty
TYPE(t1), allocatable :: src(:)
TYPE(t1),allocatable :: obj1(:)
TYPE(t1),pointer :: obj2(:)
END TYPE
type(ty) :: obj

allocate(obj%src(0:2))

obj%src(:)%ii1(2) = 2
allocate(obj%src(0)%ch1,obj%src(1)%ch1,obj%src(2)%ch1, source = "xyz")

Allocate(obj%obj1(3),obj%obj2(3),source = obj%src(:))

if(obj%obj1(3)%ii1(2) .ne. 2) print *,101
if(obj%obj1(1)%ii1(2) .ne. 2) print *,102
if(obj%obj2(3)%ii1(2) .ne. 2) print *,103
if(obj%obj2(1)%ii1(2) .ne. 2) print *,104
if(obj%obj1(1)%ch1 .ne. 'xyz') print *,105
if(obj%obj1(3)%ch1 .ne. 'xyz') print *,106
if(obj%obj2(1)%ch1 .ne. 'xyz') print *,107
if(obj%obj2(3)%ch1 .ne. 'xyz') print *,108
if(len(obj%obj1(3)%ch1) .ne. 3) print *,109
if(len(obj%obj2(3)%ch1) .ne. 3) print *,110

if(lbound(obj%obj1,1) .ne. 1) print*,111
if(ubound(obj%obj1,1) .ne. 3) print*,112
if(lbound(obj%obj2,1) .ne. 1) print*,113
if(ubound(obj%obj2,1) .ne. 3) print*,114

print *,"pass"

end

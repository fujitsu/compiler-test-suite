PROGRAM MAIN
type tt
 character(len=3), allocatable   :: ch(:),ch2(:)
 character(len=:), allocatable   :: tch(:)
 character(len=3)   :: ch3(1)
end type

type(tt) :: obj
allocate(obj%ch(2),obj%ch2,obj%tch(4),mold=obj%ch3)
if(len(obj%ch)/=3) print*,101
if(len(obj%ch2)/=3) print*,102
if(len(obj%tch)/=3) print*,105
if(size(obj%ch)/=2) print*,103
if(size(obj%ch2)/=1) print*,104
if(size(obj%tch)/=4) print*,106
print*,'pass'
END PROGRAM MAIN

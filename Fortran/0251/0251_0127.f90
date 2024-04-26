type tt
    integer,allocatable :: cmp3
end type

call ss(3,1)
call ss(3,2)
call ss(3,3)
call ss(3,4)
call ss(3,5)
print*,"pass"

contains
subroutine ss(d,d2)
integer :: d,d2
block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,101

block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,102
block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,103
if(d2==1) then
return
end if
end block
end block

block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,104
if(d2==2) then
return
end if
end block
end block

block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,105
block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,106
block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,107
if(d2==3) then
return
end if
block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,108
end block
end block
end block
block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,111
if(d2==4) then
return
end if
end block
end block

block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,109
block
integer :: arr(d)
type(tt) :: obj
allocate(obj%cmp3)
obj%cmp3 = 3
if(size(arr)/=obj%cmp3) print*,110
end block
end block
if(d2==5) then
return
end if
end subroutine
end

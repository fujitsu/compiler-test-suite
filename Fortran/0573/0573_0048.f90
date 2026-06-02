integer,allocatable,ASYNCHRONOUS :: obj(:,:)
integer,allocatable,ASYNCHRONOUS :: obj2
call sub(null(obj))
call sub(null())
call sub2(null(obj2))
call sub2(null())
print*,"pass"
contains
subroutine sub(obj)
integer, allocatable,ASYNCHRONOUS :: obj(:,:)
if(allocated(obj))print*,"101"
end subroutine
subroutine sub2(obj)
integer, allocatable,ASYNCHRONOUS :: obj
if(allocated(obj))print*,"101"
end subroutine
end


integer,allocatable,volatile:: obj(:,:)
integer,allocatable,volatile:: obj2
call sub(null(obj))
call sub(null())
call sub2(null(obj2))
call sub2(null())
call sub3(obj)
call sub4(obj2)
call sub3(null(obj))
call sub4(null(obj2))
print*,"pass"
contains
subroutine sub(obj)
integer, allocatable,volatile :: obj(:,:)
if(allocated(obj))print*,"101"
end subroutine
subroutine sub2(obj)
integer, allocatable,volatile :: obj
if(allocated(obj))print*,"101"
end subroutine
subroutine sub3(obj)
integer, allocatable,ASYNCHRONOUS :: obj(:,:)
if(allocated(obj))print*,"101"
end subroutine
subroutine sub4(obj)
integer, allocatable,ASYNCHRONOUS :: obj
if(allocated(obj))print*,"101"
end subroutine
end


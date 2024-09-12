interface
subroutine ss(ptr)
character(LEN=:),pointer,intent(in)::ptr
end subroutine
end interface
character(LEN=:),allocatable::ch
allocate(character(len=10)::ch)
call sub_int(ch)
contains
subroutine sub_int(dmy)
character(LEN=:),allocatable,target::dmy
if(len(dmy) .ne. 10) print*,"121"
call ss(dmy)
if (dmy /= "fortran")print*,122
print*,"Pass"
end subroutine
end
subroutine ss(ptr)
character(LEN=:),pointer,intent(in)::ptr
if (.not.associated(ptr))print*,"error",101
if(len(ptr) .ne. 10) print*,"221",len(ptr)
ptr="fortran"
end subroutine


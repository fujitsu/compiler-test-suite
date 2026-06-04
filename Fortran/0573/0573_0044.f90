subroutine ex_sub()
character(len=:),allocatable:: ch
allocate(character(len=2) :: ch)
call sub(NULL(ch))
print*,"PASS"
contains
subroutine sub(obj)
character(len=:),allocatable:: obj
if(allocated(obj))print*,"101"
end subroutine
END subroutine

call ex_sub()
end


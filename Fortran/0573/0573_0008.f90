subroutine ex_sub()
character(len=:),pointer:: ch

call sub(NULL(ch))
print*,"PASS"
contains
subroutine sub(obj)
character(len=:),pointer:: obj
allocate(character(len=2) :: obj)
if(obj%len .ne. 2)print*,"101",obj%len
end subroutine
END subroutine

call ex_sub()
end


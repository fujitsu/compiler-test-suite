subroutine sub(arg1,arg2)
 integer :: arg1
 character(arg1),pointer :: arg2
end subroutine
interface
 subroutine sub(arg1,arg2)
  integer :: arg1
  character(arg1),pointer :: arg2
 end subroutine
end interface
integer,parameter :: len = 5
character(5),pointer :: cha
call sub(len,cha)
print *,'pass'
end

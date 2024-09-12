subroutine sub(arg1,arg2)
 integer :: arg1
 character(arg1), pointer :: arg2
 allocate(arg2)
 arg2 = 'pass'
end subroutine
interface
 subroutine sub(arg1,arg2)
  integer :: arg1
  character(arg1),pointer :: arg2
 end subroutine
end interface
integer,parameter    :: len = 4 
character(4),pointer :: cha
call sub(len,cha)
if (cha.ne.'pass') print *,'not pass'
print *,cha
end

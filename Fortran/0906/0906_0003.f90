character :: ch
logical :: w
type ty
 integer :: ii
end type

type(ty) :: obj
ch='grep'
w=.true.
call execute_command_line(command=ch,wait=w,exitstat=obj%ii)
end

type ty1
integer :: i
end type
type(ty1) ::s
s%i=1

call sub(s%i)
print *,'pass'
end
subroutine sub(int)
procedure() :: int
end
function int()
int=1
end

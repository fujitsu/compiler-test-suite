type str
 integer :: i
endtype
call sub(str(1))
print *,'pass'
end
subroutine sub(int)
procedure() :: int
end
function int()
int=1
end

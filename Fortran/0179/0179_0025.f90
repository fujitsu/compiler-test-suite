i=1
call sub(1+i)
print *,'pass'
end
subroutine sub(int)
procedure() :: int
end
function int()
int=1
end

integer ia(10)
ia=1
call sub(ia(1))
print *,'pass'
end
subroutine sub(int)
procedure() :: int
end
function int()
int=1
end

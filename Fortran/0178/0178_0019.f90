external:: int
call sub(int)
print *,'pass'
end
subroutine sub(int)
if (1.eq.2) int=1
end
function int()
int=1
end

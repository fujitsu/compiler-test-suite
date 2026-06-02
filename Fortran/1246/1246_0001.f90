interface iii
procedure :: iii
end interface
call sub(iii)
print *,'pass'
contains
function iii()
iii=2
end
subroutine sub(iii)
i=iii()
if (i.ne.2) print *,'err'
end
end

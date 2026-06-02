call test01()
print *,"pass"
end

module mod
procedure(ent),pointer :: p
contains
subroutine subb(i)
integer :: i
i=10
return
entry ent(i)
i=7
end subroutine
end

subroutine test01()
use mod
p=>ent
call p(i)
if (i.ne.7) print *,'fail'
end

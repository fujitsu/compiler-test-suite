module mod
contains
subroutine sub()
procedure(ent),pointer :: p2=>ent
p2=>ent
entry ent()
end subroutine
end module
use mod
print*,"PASS"
end


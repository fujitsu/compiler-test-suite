module mod
contains
subroutine sub()
end subroutine
end
use mod
procedure(sub),pointer :: p=>sub
p=>sub
print *,'pass'
end
module mod
contains
recursive subroutine sub()
procedure(sub),pointer :: p=>sub
type ty1
procedure(sub),nopass,pointer :: p=>sub
end type
type(ty1) :: str
call sub()
end subroutine
end
print *,'pass'
end

module mod
contains
recursive subroutine sub()
procedure(sub),pointer :: p1=>sub
procedure(ent),pointer :: p2=>ent
entry ent()
end subroutine
end
print *,'pass'
end

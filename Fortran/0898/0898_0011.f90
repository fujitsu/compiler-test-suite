complex :: cmp
call sub(cmp%re)
10 i=1
contains
subroutine sub(*)
i=1
end subroutine
end

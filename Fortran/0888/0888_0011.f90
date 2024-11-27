character,allocatable :: ii
call sub(NULL(ii))
contains
subroutine sub(d1)
character,optional :: d1(2)
end subroutine
end


integer,pointer :: ii
call sub(NULL(ii),NULL(),NULL())
contains
subroutine sub(d1,d2,d3)
integer,optional :: d1
integer,optional :: d2
integer,allocatable,optional :: d3
end subroutine
end


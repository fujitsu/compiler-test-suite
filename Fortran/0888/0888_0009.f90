call sub1(NULL())
call sub2(NULL())
call sub3(NULL())
call sub4(NULL())
contains
subroutine sub1(d1)
integer,optional :: d1
end subroutine

subroutine sub2(d2)
integer,allocatable,optional :: d2
end subroutine


subroutine sub3(d3)
integer,optional :: d3
end subroutine


subroutine sub4(d4)
integer,optional,allocatable :: d4
end subroutine
end


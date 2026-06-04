interface 
subroutine sub2(a)
integer,allocatable::a(:)
end subroutine
end interface
integer,allocatable::a(:)
call sub(null(a))
call sub2(null(a))
print *,'pass'
contains
subroutine sub(a)
integer,allocatable::a(:)
if (allocated(a)) print *,101
end subroutine
end
subroutine sub2(a)
integer,allocatable::a(:)
if (allocated(a)) print *,102
end subroutine

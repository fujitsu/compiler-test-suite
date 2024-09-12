integer,allocatable::a,aa(:)
integer,pointer    ::p,pa(:)
integer            ::v
call s(null())
call s(null(a))
call s(null(p))

print *,'pass'
contains
subroutine s(x)
integer,optional::x
if (present(x)) print *,101
end subroutine
subroutine z(x)
integer,optional,pointer::x
if (associated(x)) print *,102
end subroutine
end



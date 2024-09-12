subroutine s1
integer,allocatable::a(:)
integer,pointer    ::b(:)=>null()
call ss(a)
call ss(b)
contains
subroutine ss(a)
integer,optional::a(2)
if (present(a))print *,101
end subroutine 
end subroutine 
call s1
print *,'pass'
end


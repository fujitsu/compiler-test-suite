module mod
contains
subroutine sub
print *,'error'
entry ent
print *,'pass 1'
end subroutine
end module

subroutine sub
print *,'error'
entry ent
print *,'pass 2'
end subroutine

subroutine s1
 use mod
 call ent
end subroutine

subroutine s2
 call ent
end subroutine

call s1
call s2
print *,'pass'
end

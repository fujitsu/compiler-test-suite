n=0
call s(n)
print *,'pass'
contains
subroutine s(k)
intent(out):: k
 call s_explicit(k)
end subroutine

subroutine s_explicit(kk)
kk=1
end subroutine
end

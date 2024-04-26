n=0
call s(n)
print *,'pass'
contains
subroutine s(k)
intent(out):: k
 call s_implicit(k)
end subroutine
end

subroutine s_implicit(kk)
kk=1
end

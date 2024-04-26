k=0
call s(k)
if (k/=3) print *,101
print *,'pass'
contains
subroutine s(k)
intent(out):: k
 call s_implicit(k)
 k=k+2
end subroutine
end

subroutine s_implicit(kk)
kk=1
end

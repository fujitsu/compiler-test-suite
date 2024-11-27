n= -1
call s(n)
if (n/=3) print *,101
print *,'pass'
contains
subroutine s(k)
intent(out):: k
 call s_explicit(k)
 k=k+2
end subroutine

subroutine s_explicit(kk)
intent(inout)::kk
kk=kk+1
end subroutine
end

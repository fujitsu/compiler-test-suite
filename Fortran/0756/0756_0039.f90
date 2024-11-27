n= -1
call s(n)
if (n/=3) print *,101
contains
subroutine s(k)
intent(out):: k
 print *,k+2
end subroutine
end

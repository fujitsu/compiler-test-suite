subroutine s1
call ss()
contains
subroutine ss(n)
integer:: a(2,3)
integer,optional:: n
if (size(a)/=6) print *,101
if (size(a,n)/=6) print *,102
end subroutine
end
call s1
print *,'pass'
end

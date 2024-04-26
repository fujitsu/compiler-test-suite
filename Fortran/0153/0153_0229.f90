integer,pointer::a
allocate(a)
call s(a)
print *,'pass'
contains
subroutine s(a)
integer,pointer::a
intent(out)::a
allocate(a,source=1)
b=a+1
if (b/=2) print *,101
end subroutine
end

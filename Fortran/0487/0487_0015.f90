procedure() :: x
call s(x)
print *,'pass'
contains
subroutine s(p)
procedure(),intent(in),pointer :: p
call p(1)
end subroutine
end
subroutine x(k)
if (k/=1) print *,201
end

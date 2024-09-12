integer::a(5)=[1,2,3,4,5]
k=1
call s(a(::k))
print *,'pass'
contains
subroutine s(x)
integer,contiguous::x(:)
if (any(x/=[1,2,3,4,5])) print *,102,x
end subroutine
end

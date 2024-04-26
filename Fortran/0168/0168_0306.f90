use iso_c_binding
integer:: a(3)
call sub(a(::2))
print *,'pass'
contains
subroutine sub(x)
integer:: x(:)
if (sizeof(x) /= 8 .or. &
    c_sizeof(x) /= 8  .or. &
    sizeof(x) /= 8 .or. &
    c_sizeof(x) /= 8 ) print *,101
end subroutine
end

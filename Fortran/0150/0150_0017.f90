subroutine s2(a)
real a
integer b(size([a+1,a+1]))
entry s21(a)
entry s22(a)
entry s23(a)
entry s24(a)
if (size(b)/=2) print *,201
end
call s2(1.0)
call s21(1.0)
call s22(1.0)
call s23(1.0)
call s24(1.0)
print *,'pass'
end

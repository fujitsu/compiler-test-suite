subroutine s1(a)
integer b(int(a+1))
entry      s11(a)
entry      s12(a)
entry      s13(a)
entry      s14(a)
if (size(b)/=2) print *,101
end
subroutine s2(a)
type x
  real::x1
end type
integer b(size([x(a+1),x(a+1)]))
entry s21(a)
entry s22(a)
entry s23(a)
entry s24(a)
if (size(b)/=2) print *,201
end
call s1(1.0)
call s11(1.0)
call s12(1.0)
call s13(1.0)
call s14(1.0)
call s2(1.0)
call s21(1.0)
call s22(1.0)
call s23(1.0)
call s24(1.0)
print *,'pass'
end

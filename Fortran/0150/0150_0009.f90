subroutine s1(a)
integer b(int(a+1))
if (size(b)/=2) print *,101
end
subroutine s2(a)
type x
  real::x1
end type
integer b(size([x(a+1),x(a+1)]))
if (size(b)/=2) print *,201
end
call s1(1.0)
call s2(1.0)
print *,'pass'
end

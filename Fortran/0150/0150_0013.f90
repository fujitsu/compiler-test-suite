subroutine s2(a)
real a
integer b(size([a+1,a+1]))
if (size(b)/=2) print *,201
end
call s2(1.0)
print *,'pass'
end

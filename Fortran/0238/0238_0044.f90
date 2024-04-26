subroutine s
integer a(int(sin(0.1)))
if (any(shape(a)/=0)) print *,101
write(1, '(z16.16)')loc(a)
end
call s
print *,'pass'
end

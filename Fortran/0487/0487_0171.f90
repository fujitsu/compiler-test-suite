subroutine s1(i)
integer:: a(i), b(size( a ))
integer:: c(size( b ))
if (size( a ) /= 2) print *,101
if (size( b ) /= 2) print *,102
if (size( c ) /= 2) print *,102
end
call s1(2)
print *,'pass'
end

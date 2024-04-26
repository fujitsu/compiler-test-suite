subroutine s1(k)
integer a(k)
a=1
if (size(a)/=2) print *,101 
if (a(2)/=1) print *,102 
end
call s1(2)
print *,'pass'
end

subroutine s1
a=55.5
if (nint(a)/=56)print *,11
if (floor(a)/=55)print *,12,floor(a)
end
call s1
print *,'pass'
end

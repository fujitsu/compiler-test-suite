subroutine s1
k=2
block
integer a(k)
a=1
if (size(a)/=2) print *,101 
if (a(2)/=1) print *,102 
end block
end
call s1
print *,'pass'
end

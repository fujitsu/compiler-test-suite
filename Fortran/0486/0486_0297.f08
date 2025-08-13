subroutine s1
integer::a(2)
call ss( a )
if (a(1)/=1) print *,101
if (a(2)/=1) print *,102
end
subroutine ss(d)
integer::d(2)
d=1
end
call s1
print *,'pass'
end

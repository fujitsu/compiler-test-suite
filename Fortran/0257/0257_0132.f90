subroutine s1()
integer::k(5) = [1,2,3,4,5]
character(2),target ::t(5)=['11','22','33','44','55']
call ss(t(1:5:2))
call ss(t(1:5:2)(:))
call ss(t(1:5:2)(:k(2)))
call ss(t(1:5:2)(k(1):k(2)))
contains
subroutine ss(a)
character(*)::a(3)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)==loc(b)) print *,201,loc(t),loc(b)
if (any(b(1:3)/= ['11','33','55'])) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end


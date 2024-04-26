subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
integer::k = 1
call ss(t(1:5:k+1))
call ss(t(1:5:k+1)(:))
call ss(t(1:5:k+1)(k+1-1:2))
call ss(t(1:5:k+1)(k:k+1))
contains
subroutine ss(a)
character(*)::a(3)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t).eq.loc(b)) print *,201,loc(t),loc(b)
if (any(b(1:3)/= ['11','33','55'])) print *,202,b(1:3)
end subroutine
end subroutine
call s1()
print *,'pass'
end


subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
integer::k = 1
call ss(t(1:5:k))
call ss(t(1:5:k)(:))
call ss(t(1:5:k)(k+1-1:2))
call ss(t(1:5:k)(k:k+1))
contains
subroutine ss(a)
character(*)::a(5)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(1:5)/= ['11','22','33','44','55'])) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end


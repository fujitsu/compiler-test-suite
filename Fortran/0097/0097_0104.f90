subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
integer::k = 1
call ss(t(k+1-1:5:k+1-1))
call ss(t(k+1-1:5:k+1-1)(:))
call ss(t(k:k+5-1:k+1-1)(k+1-1:2))
call ss(t(k:k+5-1:k+1-1)(k:k+1))
contains
subroutine ss(a)
character(*),contiguous::a(:)
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


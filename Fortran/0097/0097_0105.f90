subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
integer::k = 2
call ss(t(k-1:5:k+1-1))
call ss(t(k-1:5:k+1-1)(:))
call ss(t(k-1:k+5-2:k+1-1)(k-1:2))
call ss(t(k-1:k+5-2:k+1-1)(k-1:k))
contains
subroutine ss(a)
character(*),contiguous::a(:)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t).eq.loc(b)) print *,201,loc(t),loc(b)
if (any(b(1:3)/= ['11','33','55'])) print *,205
end subroutine
end subroutine
call s1()
print *,'pass'
end


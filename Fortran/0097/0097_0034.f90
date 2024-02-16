subroutine s1()
character(2) ::t(5)=['11','22','33','44','55']
call ss(t(:))
call ss(t(:)(:))
call ss(t(:)(:2))
call ss(t(:)(1:2))
contains
subroutine ss(a)
character(*),contiguous::a(:)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end


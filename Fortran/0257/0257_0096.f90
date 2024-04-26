subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
character(2),pointer::p(:)
p=>t(1:5:2)
call ss(p(:))
call ss(p(:)(:))
call ss(p(:)(:2))
call ss(p(:)(1:2))
contains
subroutine ss(a)
character(*)::a(5)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)==loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/= ['11','33','55'])) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end


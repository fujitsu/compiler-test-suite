subroutine s1(k)
character(3),target ::t(5)=['11','22','33','44','55']
type ty
character(3),pointer::p(:)
end type
type(ty) :: obj
if (k==1) then
obj%p=>t(1:3)
else
obj%p=>t(1::2)
endif
call ss(obj%p(:)(:2))
call ss(obj%p(:)(1:2))
contains
subroutine ss(a)
character(*)::a(3)
if (loc(t)==loc(a)) print *,201,loc(t),loc(b)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(3)
if (loc(t)==loc(b)) print *,203,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,204
b = 'aa'
end subroutine
end subroutine
call s1(1)
print *,'pass'
end


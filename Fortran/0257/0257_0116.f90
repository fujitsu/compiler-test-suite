subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
obj%p=>t(1:3)
call ss(obj%p(:))
call ss(obj%p(:)(:))
call ss(obj%p(:)(:2))
call ss(obj%p(:)(1:2))
contains
subroutine ss(a)
character(*)::a(3)
if (loc(t)/=loc(a)) print *,201,loc(t),loc(b)
if(len(a).ne.2)print*,"101"
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)/=loc(b)) print *,202,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end


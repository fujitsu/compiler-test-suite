subroutine s1(k)
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
integer::k
type(ty) :: obj
obj%p=>t(1:5:k)
call ss(obj%p(:))
call ss(obj%p(:)(:))
call ss(obj%p(:)(:2))
call ss(obj%p(:)(1:2))
contains
subroutine ss(a)
character(*)::a(3)
if (loc(t).eq.loc(a)) print *,201,loc(t),loc(b)
if(len(a).ne.2)print*,"101"
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(:)
if (loc(t).eq.loc(b)) print *,202,loc(t),loc(b)
if (any(b /= ['11','33','55'])) print *,202,b
end subroutine
end subroutine
call s1(2)
print *,'pass'
end


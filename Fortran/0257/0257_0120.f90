subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
integer::k =1
integer::l =2
obj%p=>t
call ss(obj%p(1:5:k))
call ss(obj%p(1:5:k)(:))
call ss(obj%p(1:5:k)(:l))
call ss(obj%p(1:5:k)(1:l))
call ss(obj%p(1:5:k)(k:l))
call ss(obj%p(1:5:k)(k:2))
call ss(obj%p(1:5:1)(1:l))
call ss(obj%p(1:5:1)(k:2))
call ss(obj%p(1:5:1)(k:l))
call ss(obj%p(1:5:1)(:))
call ss(obj%p(1:5:1)(:l))
contains
subroutine ss(a)
character(*)::a(5)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.5))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).ne.loc(t))print*,"104"
end subroutine
end subroutine
call s1()
print *,'pass'
end


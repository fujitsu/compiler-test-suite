subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
integer::k =2
integer::l =2
obj%p=>t
call ss(obj%p(1:5:k))
call ss(obj%p(1:5:k)(:))
call ss(obj%p(1:5:k)(:l))
call ss(obj%p(1:5:k)(1:l))
call ss(obj%p(1:5:k)(k-1:l))
call ss(obj%p(1:5:k)(k-1:2))
call ss(obj%p(1:5:2)(1:l))
call ss(obj%p(1:5:2)(k-1:2))
call ss(obj%p(1:5:2)(k-1:l))
call ss(obj%p(1:5:2)(:))
call ss(obj%p(1:5:2)(:l))
contains
subroutine ss(a)
character(*)::a(3)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).eq.loc(t))print*,"104"
if(any(a.ne.['11','33','55']))print*,"105"
end subroutine
end subroutine
call s1()
print *,'pass'
end


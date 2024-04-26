subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
integer::k =1
integer::l =2
obj%p=>t
call ss()
call ss(obj%p(1:5:k))
call ss(obj%p(1:5:k)(:))
call ss(obj%p(1:5:k)(:l))
call ss(obj%p(1:5:k)(1:l))
call ss(obj%p(1:5:k)(k:l))
if(any(t /= ['xx','xx','xx','xx','xx']))print*,109
contains
subroutine ss(a)
character(*),optional::a(5)
if(present(a))then
call sss(a)
a = 'xx'
endif
end subroutine
subroutine sss(b)
character(2),optional::b(*)
if(present(b))then
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
endif
end subroutine
end subroutine
call s1()
print *,'pass'
end


subroutine s1()
integer::k(2) = [1,2]
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
obj%p=>t
call ss(obj%p(1:5:k(1)))
call ss(obj%p(1:5:k(1))(:))
call ss(obj%p(1:5:k(1))(:k(2)))
call ss(obj%p(1:5:k(1))(1:k(2)))
call ss(obj%p(1:5:k(1))(k(1):k(2)))
call ss(obj%p(1:5:k(1))(k(1):2))
call ss(obj%p(1:5:1)(1:k(2)))
call ss(obj%p(1:5:1)(k(1):2))
call ss(obj%p(1:5:1)(k(1):k(2)))
call ss(obj%p(1:5:1)(:))
call ss(obj%p(1:5:1)(:k(2)))
if(any(t /= ['xx','xx','xx','xx','xx']))print*,109
contains
subroutine ss(a)
character(*),contiguous::a(:)
call sss(a)
end subroutine
subroutine sss(b)
character(2),contiguous::b(:)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
b = 'xx'
end subroutine
end subroutine
call s1()
print *,'pass'
end


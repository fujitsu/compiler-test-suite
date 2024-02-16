subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
integer::k =1
obj%p=>t
call ss()
call ss(obj%p(1:5:k))
call ss(obj%p(1:5:k)(:))
call ss(obj%p(1:5:k)(:2))
call ss(obj%p(1:5:k)(1:2))
if(any(t /= ['xx','xx','xx','xx','xx']))print*,109
contains
subroutine ss(a)
character(*),contiguous,optional::a(:)
if(present(a))then
call sss(a)
a = 'xx'
endif
end subroutine
subroutine sss(b)
character(2),optional::b(5)
if(present(b))then
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:5)/=t(:5))) print *,202
endif
end subroutine
end subroutine
call s1()
print *,'pass'
end


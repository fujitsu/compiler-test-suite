subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
integer::k =2
integer::m =2
integer::l =2
character::ch
ch = 'x'
obj%p=>t
call ss(obj%p(::k)(m:m),ch)
if(any(t /= ['1x','22','3x','44','5x']))print*,117,t
ch = 'y'
call ss(obj%p(1:5:k)(2:l),ch)
if(any(t /= ['1y','22','3y','44','5y']))print*,116,t
ch = 'z'
call ss(obj%p(1:5:k)(m:l),ch)
if(any(t /= ['1z','22','3z','44','5z']))print*,115,t
ch = 'y'
call ss(obj%p(1:5:k)(m:l),ch)
if(any(t /= ['1y','22','3y','44','5y']))print*,114,t
ch = 'z'
call ss(obj%p(1:5:k)(m:2),ch)
if(any(t /= ['1z','22','3z','44','5z']))print*,113,t
ch = 'x'
call ss(obj%p(1:5:2)(m:l),ch)
if(any(t /= ['1x','22','3x','44','5x']))print*,109,t
call ss(obj%p(1:5:2)(m:2),ch)
ch = 'z'
call ss(obj%p(1:5:2)(m:l),ch)
if(any(t /= ['1z','22','3z','44','5z']))print*,112,t
ch = 'x'
call ss(obj%p(1:5:2)(m:),ch)
if(any(t /= ['1x','22','3x','44','5x']))print*,109,t
ch = 'x'
ch = 'z'
call ss(obj%p(1:5:2)(m:k),ch)
if(any(t /= ['1z','22','3z','44','5z']))print*,111,t
call ss3(obj%p(1:5:2)(m:k))
contains
subroutine ss(a,ch)
character(1)::a(3)
character::ch
call sss(a,ch)
end subroutine
subroutine sss(b,ch)
character::ch
character(*)::b(3)
if (loc(t)==loc(b)) print *,201,loc(t),loc(b)
b = ch
end subroutine
subroutine ss3(a)
character(*)::a(..)
if(any(lbound(a).ne.1))print*,"1011"
if(any(ubound(a).ne.3))print*,"1012"
if(len(a).ne.1)print*,"1013"
end subroutine
end subroutine
call s1()
print *,'pass'
end


subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
integer::k =1
integer::m =2
integer::l =2
character::ch
ch = 'x'
obj%p=>t
call ss(obj%p(:)(m:m),ch)
if(any(t /= ['1x','2x','3x','4x','5x']))print*,109,t
ch = 'y'
call ss(obj%p(::k)(2:l),ch)
if(any(t /= ['1y','2y','3y','4y','5y']))print*,110,t
ch = 'z'
call ss(obj%p(k::k)(m:l),ch)
if(any(t /= ['1z','2z','3z','4z','5z']))print*,110,t
ch = 'y'
call ss(obj%p(1:5:k)(m:l),ch)
if(any(t /= ['1y','2y','3y','4y','5y']))print*,110,t
ch = 'z'
call ss(obj%p(1:5:k)(m:2),ch)
if(any(t /= ['1z','2z','3z','4z','5z']))print*,110,t
ch = 'x'
call ss(obj%p(1:5:1)(m:l),ch)
if(any(t /= ['1x','2x','3x','4x','5x']))print*,109,t
call ss(obj%p(1:5:1)(m:2),ch)
ch = 'z'
call ss(obj%p(1:5:1)(m:l),ch)
if(any(t /= ['1z','2z','3z','4z','5z']))print*,110,t
ch = 'x'
call ss(obj%p(1:5:1)(m:),ch)
if(any(t /= ['1x','2x','3x','4x','5x']))print*,109,t
ch = 'x'
ch = 'z'
call ss(obj%p(1:5:1)(m:k+1),ch)
if(any(t /= ['1z','2z','3z','4z','5z']))print*,110,t
contains
subroutine ss(a,ch)
character(*)::a(5)
character::ch
call sss(a,ch)
end subroutine
subroutine sss(b,ch)
character::ch
character(*),contiguous::b(:)
if (loc(t)==loc(b)) print *,201,loc(t),loc(b)
b = ch
end subroutine
end subroutine
call s1()
print *,'pass'
end


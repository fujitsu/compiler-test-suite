subroutine s1(k)
integer::k
character(len=2),target::t(3,3)=reshape(['11','22','33','44','55','66','77','88','99'],[3,3])
type ty
character(2),pointer::p(:,:)
end type
type(ty) :: obj
obj%p=>t(1:3:k,1:3:k)
call ss(obj%p)
call ss(obj%p(:,:)(:))
call ss(obj%p(:,:)(:2))
call ss(obj%p(:,:)(1:2))
call ss(obj%p(:,:)(k:2))
call ss(obj%p(:,:)(k:k+1))
call ss(obj%p(1:3:1,1:3:1)(k:k+1))
call ss(obj%p(1:3:k,1:3:1)(k:k+1))
contains
subroutine ss(a)
character(*)::a(3,3)
if(len(a).ne.2)print*,"101"
if(loc(a).ne.loc(obj%p))print*,"103"
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t).ne.loc(obj%p)) print *,201,loc(t),loc(b)
end subroutine
end subroutine
call s1(1)
print *,'pass'
end


subroutine s1()
character(2),target ::t(3,3,3)=reshape(['11','22','33','44','55','66','77','88','99','11','22','33','44','55','66','77','88','99','11','22','33','44','55','66','77','88','99'],[3,3,3])
type ty
character(2),pointer::p(:,:,:)
end type
type(ty) :: obj
integer::k =1
integer::l =2
obj%p=>t
call ss(obj%p(1:3:k,1:3:k,1:3:k))
call ss(obj%p(1:3:k,1::k,::k)(:))
call ss(obj%p(1:3:k,1:3:k,1:3:k)(:l))
call ss(obj%p(1:3:k,1:3:k,1:3:1)(1:l))
call ss(obj%p(1:3:1,1:3:k,1:3:k)(k:l))
call ss(obj%p(:,:,1:3:k)(k:2))
call ss(obj%p(1:3:k,1:3:k,1:3:k)(1:l))
call ss(obj%p(1:3:1,:,:)(k:2))
call ss(obj%p(:,1:3:1,:)(k:l))
call ss(obj%p(1:3:1,:,:)(:))
call ss(obj%p(1:3:1,1:3:1,1:3:1)(:l))
call ss2(obj%p(1:3:k,1:3:k,1:3:k))
call ss2(obj%p(1:3:k,1::k,::k)(:))
call ss2(obj%p(1:3:k,1:3:k,1:3:k)(:l))
call ss2(obj%p(1:3:k,1:3:k,1:3:1)(1:l))
call ss2(obj%p(1:3:1,1:3:k,1:3:k)(k:l))
call ss2(obj%p(:,:,1:3:k)(k:2))
call ss2(obj%p(1:3:k,1:3:k,1:3:k)(1:l))
call ss2(obj%p(1:3:1,:,:)(k:2))
call ss2(obj%p(:,1:3:1,:)(k:l))
call ss2(obj%p(1:3:1,:,:)(:))
call ss2(obj%p(1:3:1,1:3:1,1:3:1)(:l))
contains
subroutine ss(a)
character(len=2),contiguous::a(:,:,:)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102", ubound(a)
if(len(a).ne.2)print*,"103", len(a)
if(loc(obj%p).ne.loc(a))print*,"103"
end subroutine
subroutine ss2(a)
character(len=2)::a(3,3,3)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102", ubound(a)
if(len(a).ne.2)print*,"103", len(a)
if(loc(obj%p).ne.loc(a))print*,"103"
end subroutine
end subroutine
call s1()
print *,'pass'
end


subroutine s1()
character(2),target ::t(3,3)=reshape(['11','22','33','44','55','66', '77', '88' ,'99'] ,[3,3])
type ty
character(2),pointer::p(:,:)
end type
type(ty) :: obj
integer::k =1
obj%p=>t(1:3:k+1,1:3:2)

call ss(obj%p(:,:))
call ss(obj%p(:,:)(:))
call ss(obj%p(:,:)(:2))
call ss(obj%p(:,:)(k:2))
if(any(t /= reshape(['xx','22','xx','44','55','66', 'xx', '88' ,'xx'] ,[3,3])))print*,109
contains
subroutine ss(a)
character(*),contiguous::a(:,:)
if(loc(a).eq.loc(t))print*,101
a = 'xx'
end subroutine
end subroutine
call s1()
print *,'pass'
end


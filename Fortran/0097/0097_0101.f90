subroutine s1()
character(2),target ::t(3,3)=reshape(['11','22','33','44','55','66', '77', '88' ,'99'] ,[3,3])
type ty
character(2),pointer::p(:,:)
end type
type(ty) :: obj
integer::k =1
obj%p=>t

call ss(obj%p(1:3:k,1:3:k))
call ss(obj%p(1:3:k,1:3:k)(:))
call ss(obj%p(k:3:k,k:3:k)(:2))
call ss(obj%p(k:3:k,1:3:k)(1:2))
if(any(t /= reshape(['xx','xx','xx','xx','xx','xx', 'xx', 'xx' ,'xx'] ,[3,3])))print*,109
contains
subroutine ss(a)
character(*),contiguous::a(:,:)

call sss(a)
a = 'xx'

end subroutine
subroutine sss(b)
character(2)::b(3,3)

if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3,:3)/=t(:3,:3))) print *,202

end subroutine
end subroutine
call s1()
print *,'pass'
end


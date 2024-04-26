subroutine s1()
type ty
character(len=2)::t(3,3)
end type
type(ty) :: obj
integer::k =1
integer::l =2
obj%t=reshape(['11','22','33','44','55','66','77','88','99'],[3,3])
call ss(obj%t)
call ss(obj%t(:,:))
call ss(obj%t(:,1:3:1))
call ss(obj%t(1:3:1,1:3:1))
call ss(obj%t(:,1:3:k))
call ss(obj%t(1:3:k,1:3:k))
call ss(obj%t(k:3:k,k:3:k))
call ss(obj%t(1:3:1,1:l+1:1))
call ss(obj%t(:,:)(:))
call ss(obj%t(:,:)(1:2))
call ss(obj%t(:,:)(k:2))
call ss(obj%t(:,:)(k:l))
call ss(obj%t(:,1:3:1)(1:2))
call ss(obj%t(1:3:1,1:3:1)(1:2))
call ss(obj%t(:,1:3:k)(k:2))
call ss(obj%t(1:3:k,1:3:k)(k:l))
call ss(obj%t(k:3:k,k:3:k)(:))
call ss(obj%t(1:3:1,1:l+1:1)(1:l))
contains
subroutine ss(a)
character(*)::a(3,3)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).ne.loc(obj%t))print*,"104"
if(any(a.ne.reshape(['11','22','33','44','55','66','77','88','99'],[3,3])))print*,"105",a
end subroutine
end subroutine
call s1()
print *,'pass'
end


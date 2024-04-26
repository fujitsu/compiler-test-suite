subroutine s1()
type ty
character(len=2)::t(3,3)
end type
type(ty) :: obj
integer::k =1
integer::l =1
integer::num(5)=[1,2,3,4,5]
obj%t=reshape(['11','22','33','44','55','66','77','88','99'],[3,3])
call ss(obj%t(1:3:num(1),1:3:1)(1:2))
call ss(obj%t(num(1):3:1,1:num(3):num(1))(1:2))
call ss(obj%t(1:3:num(1),1:3:k)(k:2))
call ss(obj%t(1:3:k,1:3:k)(k:l+1))
call ss(obj%t(k:3:k,k:3:k)(1:k+1))
call ss(obj%t(1:3:k,1:l+2:1)(1:l+k))
contains
subroutine ss(a)
character(*)::a(3,3)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).ne.loc(obj%t))print*,"104", loc(a), loc(obj%t)
if(any(a.ne.reshape(['11','22','33','44','55','66','77','88','99'],[3,3])))print*,"105",a
call ss2(a(:,:))
call ss3(a(:,:))
call ss4(a(:,:))
end subroutine
subroutine ss2(a)
character(*)::a(3,3)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).ne.loc(obj%t))print*,"104", loc(a), loc(obj%t)
if(any(a.ne.reshape(['11','22','33','44','55','66','77','88','99'],[3,3])))print*,"105",a
end subroutine
subroutine ss3(a)
character(*)::a(:,:)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).ne.loc(obj%t))print*,"104", loc(a), loc(obj%t)
if(any(a.ne.reshape(['11','22','33','44','55','66','77','88','99'],[3,3])))print*,"105",a
end subroutine
subroutine ss4(a)
character(*),contiguous::a(:,:)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.3))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).ne.loc(obj%t))print*,"104", loc(a), loc(obj%t)
if(any(a.ne.reshape(['11','22','33','44','55','66','77','88','99'],[3,3])))print*,"105",a
end subroutine
end subroutine
call s1()
print *,'pass'
end


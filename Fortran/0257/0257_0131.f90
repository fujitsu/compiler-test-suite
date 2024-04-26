subroutine s1()
type ty
character(len=3)::t(3,3)
end type
type(ty) :: obj
integer::k =2
integer::l =2
obj%t=reshape(['111','222','333','444','555','666','777','888','999'],[3,3])
call ss(obj%t(1:3:2,1:3:2)(1:2))
call ss(obj%t(1:3:2,1:3:2)(1:2))
call ss(obj%t(1:3:2,1:3:k)(k-1:2))
call ss(obj%t(1:3:k,1:3:k)(k-1:l))
call ss(obj%t(k-1:3:k,k-1:3:k)(1:k))
call ss(obj%t(1:3:k,1:l+1:2)(1:l))
contains
subroutine ss(a)
character(*)::a(2,2)
if(any(lbound(a).ne.1))print*,"101"
if(any(ubound(a).ne.2))print*,"102"
if(len(a).ne.2)print*,"103", len(a)
if(loc(a).eq.loc(obj%t))print*,"104"
if(any(a.ne.reshape(['11','33','77','99'],[2,2])))print*,"105",a
end subroutine
end subroutine
call s1()
print *,'pass'
end


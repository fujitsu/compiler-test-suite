subroutine s1(k)
character(2),target ::t(5)=['11','22','33','44','55']
character(2),target ::t2(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
type(ty) :: obj2
if (k==1) then
obj%p=>t(1:3)
obj2%p=>t2(1::2)
else
obj%p=>t(1::2)
obj2%p=>t2(1:3)
endif
call ss(obj%p(:), obj2%p(:))
call ss(obj%p(:)(:),obj2%p(:)(:))
call ss(obj%p(:)(1:2),obj2%p(:)(:2))
call ss(obj%p(:)(1:2),obj2%p(:)(1:2))
if (any(t2/=['xx','22','xx','44','xx'])) print *,102,t2
if (any(t/=['yy','yy','yy','44','55'])) print *,107,t1
contains
subroutine ss(a ,b)
character(*)::a(3)
character(*)::b(3)
if (loc(t)/=loc(a)) print *,200,loc(t1),loc(a)
if (loc(t2)==loc(b)) print *,201,loc(t2),loc(b)
if(len(a).ne.2)print*,"102"
if(len(b).ne.2)print*,"102"
b = 'xx'
a = 'yy'
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
end subroutine
end subroutine
call s1(1)
print *,'pass'
end


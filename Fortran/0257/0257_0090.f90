subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type TY
integer::k
end type
type(TY)::obj
obj%k=1
call ss(t(1:5:obj%k))
call ss(t(1:5:obj%k)(:))
call ss(t(1:5:obj%k)(1:2))
call ss(t(1:5:obj%k)((obj%k):obj%k+1))
contains
subroutine ss(a)
character(*)::a(5)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(5)
if (loc(t).ne.loc(b)) print *,201,loc(t),loc(b)
if (any(b(1:5)/= ['11','22','33','44','55'])) print *,202,b
end subroutine
end subroutine
call s1()
print *,'pass'
end


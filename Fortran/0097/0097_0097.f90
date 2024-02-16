subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
integer::k =2
call ss(t(1:5:k))
call ss(t(1:5:k)(:))
call ss(t(1:5:k)(:2))
call ss(t(1:5:k)(1:2))
if(any(t /= ['xx','22','xx','44','xx']))print*,109
contains
subroutine ss(a)
character(*)::a(3)
if (loc(t)==loc(a)) print *,301,loc(t),loc(b)
call sss(a)
a = 'xx'
end subroutine
subroutine sss(b)
character(2),contiguous::b(:)
if (loc(t)==loc(b)) print *,201,loc(t),loc(b)
if (b(1)/=t(1)) print *,202
if (b(2)/=t(3)) print *,202
if (b(3)/=t(5)) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end


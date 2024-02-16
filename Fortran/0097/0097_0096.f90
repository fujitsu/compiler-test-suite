subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
integer::k =1
call ss(t(1:5:k))
call ss(t(1:5:k)(:))
call ss(t(1:5:k)(:2))
call ss(t(1:5:k)(1:2))
if(any(t /= ['xx','xx','xx','xx','xx']))print*,109
contains
subroutine ss(a)
character(*),contiguous::a(:)
if (loc(t)/=loc(a)) print *,301,loc(t),loc(b)
call sss(a)
a = 'xx'
end subroutine
subroutine sss(b)
character(2),contiguous::b(:)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:5)/=t(:5))) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end


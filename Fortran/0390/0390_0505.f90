module  m1
contains
function ss1(a) result(r)
integer,volatile:: a
a=1
r=0
end function
function ss2(a) result(r)
integer,volatile:: a(2)
a=1
r=0
end function
function ss3(a) result(r)
integer,asynchronous:: a
a=1
r=0
end function
function ss4(a) result(r)
integer,asynchronous:: a(2)
a=1
r=0
end function
end
subroutine s1
use m1
integer:: aa
integer:: ab(2)
call=ss1(aa)
call=ss2(ab)
call=ss3(aa)
call=ss4(ab)
if (call/=0) print *,10001
end 
call s1
print *,'pass'
end


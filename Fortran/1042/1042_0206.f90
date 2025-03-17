subroutine s
integer,pointer::a(:)
integer        ::b(5)
integer,target ::t(5)
b=(/1,2,3,4,5/)
t=(/1,2,3,4,5/)
a=>t(1:5:2)
call sub(a,b(1:5:2))
contains
subroutine sub(a,b)
integer,pointer::a(:)
integer        ::b(:)
if (any(a/=(/1,3,5/)))write(6,*) "NG"
if (any(b/=(/1,3,5/)))write(6,*) "NG"
call ss(a(1))
call ss(b(1))
end subroutine
end
subroutine ss(x)
integer x(3)
if (any(x/=(/1,2,3/)))write(6,*) "NG"
end
call s
print *,'pass'
end


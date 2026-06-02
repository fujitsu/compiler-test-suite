call sub(2)
end
subroutine sub(k)
integer a(k:0)
call foo(a)
print *,'pass'
contains
subroutine foo(x)
integer x(..)
if(any(lbound(x)/=1)) print *,801
end subroutine
end

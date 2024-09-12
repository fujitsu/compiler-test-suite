module m1
character(1),target:: t1
contains
subroutine s1
t1='1'
call sub(t1)
if (kfun(t1)/=1) print *,101
end subroutine
subroutine sub(pp)
character(*),pointer,intent(in)::pp
if (len(pp)/=1) print *,200
if (pp/='1') print *,201
end subroutine
function kfun(pp)
character(*),pointer,intent(in)::pp
if (len(pp)/=1) print *,200
if (pp/='1') print *,201
kfun=1
end function
end
use m1
call s1
print *,'pass'
end

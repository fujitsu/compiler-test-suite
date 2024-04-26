call s1
call s2
print *,'pass'
end
subroutine s1
use iso_c_binding
type,bind(c)::t
real(8)::r
end type
type(t)::ttt(2)
if(c_sizeof(ttt)/=16) call err(1)
if(c_sizeof(ttt(1))/=8) call err(2)
if(c_sizeof(ttt(1:2))/=16) call err(3)
if(c_sizeof(ttt(2:0))/=0) call err(4)
if(c_sizeof(ttt(2:-3))/=0) call err(5)
end
subroutine s2
use iso_c_binding
type,bind(c):: t
real(8)::q
complex(8)::cq
end type
type(t)::ttt
if(c_sizeof([ttt])/=24) call err(6)
end
subroutine err(i)
integer,intent(in)::i
print *,'err',i
end
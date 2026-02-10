subroutine s1
type x
 integer::x1
 procedure(),pointer,nopass::p
 procedure(real),pointer,nopass::p2
end type
type(x)::v1,v2
external sub,fun
v1%p=>sub
call sub
v2%p2=>fun
if (abs(v2%p2()-2.)>0.001)print *,101
end
call s1
print *,'pass'
end
subroutine sub
end
function fun()
fun=2
end

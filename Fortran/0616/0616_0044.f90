subroutine sub(q,a)
intrinsic acos
real::q,a
procedure(cos),pointer::p
p=>acos
if (abs(p(a)-q(a))>0.0000000000001)print *,101
end
intrinsic acos
call sub(acos,0.1)
print *,'pass'
end

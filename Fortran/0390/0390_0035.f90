subroutine sub(q,a)
intrinsic cos
real::q,a
procedure(cos),pointer::p
p=>cos
if (abs(p(a)-q(a))>0.0000001)print *,101
end
intrinsic cos
call sub(cos,0.1)
print *,'pass'
end


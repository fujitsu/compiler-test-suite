subroutine sub(q,a1,a2)
intrinsic index
integer ::q
character(*) a1,a2
procedure(index),pointer::p
p=>index
if (p(a1,a2)/=q(a1,a2))print *,101
end
intrinsic index
call sub(index,'ab','b')
print *,'pass'
end

integer::r(3,4)
intrinsic rank
call sub(rank(r))
print*,"PASS"
contains
subroutine sub(i)
integer::i(..)
if(rank(i)/=0)print*,101
end subroutine
end


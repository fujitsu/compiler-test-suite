integer::r(3,4)
intrinsic rank
call sub(rank(A=r))
print*,"PASS"
contains
subroutine sub(i)
integer::i(..)
if(rank(A=i)/=0)print*,101


end subroutine

end


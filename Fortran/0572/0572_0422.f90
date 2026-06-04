integer :: aa(3)=2
integer :: bb(4)=3

call sub(aa(bb))
contains
subroutine sub(dmy)
integer :: dmy(..)
if(loc(aa(bb)) .eq. loc(dmy))print*,'101'
print*,"PASS"
end subroutine sub
end

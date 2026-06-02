IMPLICIT NONE
integer::n(3)
integer::kk(3)=(/1,2,3/)
integer :: ap(3)=(/1,2,3/)
integer :: pp=2
n=[1,2,3]
associate( k=> n(2:3))
  block
    integer::ary(k(ap(2)))
    integer::bry(k(pp))
!    integer::a1ry(kk(ap(2)))
!    integer::b2ry(kk(pp))
! ok   integer::arr(ap(2))
! ok    integer::brr(pp)
    if (size(ary)/=3) print *,1001
    if (size(bry)/=3) print *,1002
  end block
end associate
print *,'pass'
end
subroutine subbb() !bry,k,pp)
    integer::k(2),pp
k=(/2,3/)
pp=1
block
    integer::bry(k(pp))
end block
end 

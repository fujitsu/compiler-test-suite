IMPLICIT NONE
integer::n(3)
integer :: ap(3)=(/1,2,3/)
integer :: pp=2
n=[1,2,3]
associate( k=> n(2:3))
  block
    integer::ary(k(ap(2)))
    integer::bry(k(pp))
!    integer::brr(ap(2))
    if (size(ary)/=3) print *,1001
    if (size(bry)/=3) print *,1002
  end block
end associate
print *,'pass'
end

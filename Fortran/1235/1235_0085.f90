IMPLICIT NONE
integer :: p1=1
integer :: p2=2
associate( k=> 2)
  block
    integer::ary(k,p2)
    character(p1)::bry(k)
!    integer::brr(ap(2))
    if (size(ary)/=4) print *,1001
    if (size(bry)/=2) print *,1002
  end block
end associate
print *,'pass'
end

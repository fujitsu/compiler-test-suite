IMPLICIT NONE
integer :: p1(2,2)=0
integer :: p2(2,2)=0
p1(1,2)=1
p2(1,2)=2
associate( k=> 2)
  block
    integer::ary(k,p2(1,2))
    character(p1(1,2))::bry(k)
!    integer::brr(ap(2))
    if (size(ary)/=4) print *,1001
    if (size(bry)/=2) print *,1002
    if (len(bry)/=1) print *,1003
  end block
end associate
print *,'pass'
end

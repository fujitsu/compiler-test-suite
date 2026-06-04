IMPLICIT NONE
integer :: p1(2,2,1,1)
integer :: p2(2,2,1,1)
p1(2,2,1,1)=0
p2(2,2,1,1)=0
p1(1,2,1,1)=1
p2(1,2,1,1)=2
associate( k=> 2)
  block
    integer::ary(k,p2(1,2,1,1))
    character(p1(1,2,1,1))::bry(k)
    character(p1(1,2,1,1))::cry(k,p2(1,2,1,1))
!    integer::brr(ap(2))
    if (size(ary)/=4) print *,1001
    if (size(bry)/=2) print *,1002
    if (len(bry)/=1) print *,1003
    if (size(cry)/=4) print *,1004
    if (len(cry)/=1) print *,1005
  end block
end associate
print *,'pass'
end

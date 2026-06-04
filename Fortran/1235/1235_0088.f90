IMPLICIT NONE
common /com/ p1,p2,p3
integer :: p1(101,102,103)
integer :: p2(101,102,103)
integer :: p3(101,102,103)
p1=0
p2=0
p3=0
p1(1,2,3)=1
p2(1,2,3)=2
associate( k=> 2)
  block
    integer::ary(k,p2(1,2,3))
    character(p1(1,2,3))::bry(k)
!    integer::brr(ap(2))
    if (size(ary)/=4) print *,1001
    if (size(bry)/=2) print *,1002
    if (len(bry)/=1) print *,1003
  end block
end associate
print *,'pass'
end

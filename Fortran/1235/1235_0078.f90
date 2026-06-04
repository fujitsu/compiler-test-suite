IMPLICIT NONE
integer::k=2,n
n=k
associate( k=> n,k2=>1)
  block 
    integer::ary(k)
    integer::cry(1)
    integer::dry(3)
    integer::bry(k)
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1001
    if (size(cry)/=1) print *,1001
    if (size(dry)/=3) print *,1001
    ary(2)=2
    bry(2)=2
    if (ary(2)/=2) print *,800
    if (bry(2)/=2) print *,800
  end block
end associate
print *,'pass'
end

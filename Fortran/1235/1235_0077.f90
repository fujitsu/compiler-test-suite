IMPLICIT NONE
integer::n
n=2
associate( k=> n)
  block 
    integer::ary(k)
    integer::cry(2)
    integer::bry(k)
    integer::dry(2)
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1001
    ary(2)=2
    bry(2)=2
    if (ary(2)/=2) print *,800
    if (bry(2)/=2) print *,800
  end block
end associate
print *,'pass'
end

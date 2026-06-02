IMPLICIT NONE
integer::n
n=2
associate( k=> n)
  block 
    integer::ary(k)
    integer::ary1(2)
  block 
    integer::bry(size(ary))
    integer::cry(size(ary1))
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1001
    if (size(cry)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
  end block
end associate
print *,'pass'
end

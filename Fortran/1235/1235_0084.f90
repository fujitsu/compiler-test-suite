IMPLICIT NONE
integer::n
n=2
associate( k=> n)
  block 
    integer::ary(k)
    integer::ary1(2)
associate( k2=> k,k3=>1)
  block 
    integer::bry(size(ary))
    integer::bry1(size(ary1))
associate( k4=> k,k5=>1)
  block
    integer::bry2(size(bry))
    integer::cry2(size(bry1))

    if (size(ary)/=2) print *,1001
    if (size(bry2)/=2) print *,1001
    if (size(cry2)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
end associate
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1001
    if (size(bry1)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
end associate
  end block
end associate
print *,'pass'
end

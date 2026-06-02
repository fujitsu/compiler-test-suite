IMPLICIT NONE
integer::n
n=2
associate( k1=> n)
  block 
    integer::ary(k1)
associate( k2=>k1,kk3=>1)
  block 
    integer::bry(k2)
associate( k3=> k2,kk5=>1,kk6=>1)
  block
    integer::cry(k3)
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1002
    if (size(cry)/=2) print *,1003
  end block
end associate
  end block
end associate
  end block
end associate
print *,'pass'
end

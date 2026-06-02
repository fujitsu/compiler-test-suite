IMPLICIT NONE
integer::n
n=2
associate( k1=> n)
  block 
    integer::ary(k1),xx1(1),xx2(2)
associate( k2=>k1,kk3=>1)
  block 
    integer::xx2(2),bry(k2),xx4(2)
associate( k3=> k2,kk5=>1,kk6=>1)
  block
    integer::xx5(2),xx6(2),cry(k3)
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

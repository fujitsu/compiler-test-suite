IMPLICIT NONE
integer::n
n=2
associate( k1=> n,kp3=>2)
  block 
    integer::x11(1),ary(k1),x21(n),ary2(k1)
associate( kk3=>1,k2=>k1,kp2=>2)
  block 
    integer::x12(1),bry(k1),x31(n),bry2(k2)
associate( kk5=>1,kk6=>1,k3=> k2,kp1=>1)
  block
    integer::x13(1),cry(k1),x41(n),cry2(k3)
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1002
    if (size(cry)/=2) print *,1003
    if (size(ary2)/=2) print *,1001
    if (size(bry2)/=2) print *,1002
    if (size(cry2)/=2) print *,1003
  end block
end associate
  end block
end associate
  end block
end associate
print *,'pass'
end

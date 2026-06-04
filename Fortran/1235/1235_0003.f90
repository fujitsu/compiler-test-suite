IMPLICIT NONE
integer::n
n=2
associate( k=> n,kk2=>1,kk3=>2,kk4=>3)
  block 
    integer::ary(k)
    integer::ary1(2)
associate( k2=> k,k3=>1)
  block 
    integer::bry(size(ary))
    integer::bry1(size(ary1),k2)
associate( k4=> k,k5=>1)
  block
    integer::bry2(size(bry))
    integer::cry2(size(bry1),k4)

    if (size(ary)/=2) print *,1001
    if (size(bry2)/=2) print *,1002
    if (size(cry2)/=8) print *,1003,size(cry2),size(cry2,1),size(cry2,2)
    ary(2)=2
block
    if (ary(2)/=2) print *,800
end block
  end block
end associate
associate( k4=> k,k5=>1)
  block
    integer::bry2(size(bry))
    integer::cry2(size(bry1),k4+1)

    if (size(ary)/=2) print *,1001
    if (size(bry2)/=2) print *,1002
    if (size(cry2)/=12) print *,1003,size(cry2),size(cry2,1),size(cry2,2)
    ary(2)=2
block
    if (ary(2)/=2) print *,800
end block
  end block
end associate
associate( k4=> k,k5=>1)
  block
    integer::bry2(size(bry))
    integer::cry2(size(bry1),k4+1)

    if (size(ary)/=2) print *,1001
    if (size(bry2)/=2) print *,1002
    if (size(cry2)/=12) print *,1003,size(cry2),size(cry2,1),size(cry2,2)
    ary(2)=2
block
    if (ary(2)/=2) print *,800
end block
  end block
end associate
block
    if (size(ary)/=2) print *,1004
    if (size(bry)/=2) print *,1005
    if (size(bry1)/=4) print *,1006
    ary(2)=2
    if (ary(2)/=2) print *,801
end block
  end block
end associate
  end block
end associate
print *,'pass'
end

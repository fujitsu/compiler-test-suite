IMPLICIT NONE
integer::k=2,n
n=k
associate( k=> n)
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
associate( k2=> n)
  block
    integer::cry(1)
    integer::ary(k2)
    integer::dry(3)
    integer::bry(k2)
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
associate( k2=> n)
  block
    integer::cry(1)
    integer::dry(3)
    integer::bry(k)
    integer::ary(k)
  block
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1001
    if (size(cry)/=1) print *,1001
    if (size(dry)/=3) print *,1001
    ary(2)=2
    bry(2)=2
    if (ary(2)/=2) print *,800
    if (bry(2)/=2) print *,800
  end block
  end block
end associate
end associate
k=2
  block
    integer::cry(1)
    integer::dry(3)
    integer::bry(k)
    integer::ary(k)
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1001
    if (size(cry)/=1) print *,1001
    if (size(dry)/=3) print *,1001
    ary(2)=2
    bry(2)=2
    if (ary(2)/=2) print *,800
    if (bry(2)/=2) print *,800
  end block
print *,'pass'
end

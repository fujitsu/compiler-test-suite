integer::k
n=2
associate( k=> n)
  block 
associate( k2=> k)
  block 
    integer::ary((k):3)
    integer::bry(0+(k):3)
    integer::cry((k)+0:3)
    integer::dry(int(k):3)
    integer::ery(+k:3)
    integer::fry(size([(i,i=1,k)]):3)
    integer::gry(size([(i,i=1,int(k))]):3)
    integer::hry(size([(k,i=1,2)]):3)
    integer::iry(size([(int(k),i=1,2)]):3)
    integer::jry(k+0:3)
  block 
    integer::kry(0+k:3)
    if (size(kry)/=2) print *,1001
    kry(2)=2
    if (kry(2)/=2) print *,800
  end block
    if (size(ary)/=2) print *,1002,size(ary),lbound(ary),ubound(ary)
    ary(2)=2
    if (ary(2)/=2) print *,800
    if (size(bry)/=2) print *,1003
    bry(2)=2
    if (bry(2)/=2) print *,800
    if (size(cry)/=2) print *,1004
    cry(2)=2
    if (cry(2)/=2) print *,800
    if (size(dry)/=2) print *,1005
    dry(2)=2
    if (dry(2)/=2) print *,800
    if (size(ery)/=2) print *,1006
    ery(2)=2
    if (ery(2)/=2) print *,800
    if (size(fry)/=2) print *,1007
    fry(2)=2
    if (fry(2)/=2) print *,800
    if (size(gry)/=2) print *,1008
    gry(2)=2
    if (gry(2)/=2) print *,800
    if (size(hry)/=2) print *,1009
    hry(2)=2
    if (hry(2)/=2) print *,800
    if (size(iry)/=2) print *,1010
    iry(2)=2
    if (iry(2)/=2) print *,800
    if (size(jry)/=2) print *,1011
    jry(2)=2
    if (jry(2)/=2) print *,800
  end block
end associate
  end block
end associate
print *,'pass'
end

integer::k
n=2
associate( k=> n)
  block 
    integer::ary((k))
    integer::bry(0+(k))
    integer::cry((k)+0)
    integer::dry(int(k))
    integer::ery(+k)
    integer::fry(size([(i,i=1,k)]))
    integer::gry(size([(i,i=1,int(k))]))
    integer::hry(size([(k,i=1,2)]))
    integer::iry(size([(int(k),i=1,2)]))
    integer::jry(k+0)
    integer::kry(0+k)
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
    if (size(bry)/=2) print *,1001
    bry(2)=2
    if (bry(2)/=2) print *,800
    if (size(cry)/=2) print *,1001
    cry(2)=2
    if (cry(2)/=2) print *,800
    if (size(dry)/=2) print *,1001
    dry(2)=2
    if (dry(2)/=2) print *,800
    if (size(ery)/=2) print *,1001
    ery(2)=2
    if (ery(2)/=2) print *,800
    if (size(fry)/=2) print *,1001
    fry(2)=2
    if (fry(2)/=2) print *,800
    if (size(gry)/=2) print *,1001
    gry(2)=2
    if (gry(2)/=2) print *,800
    if (size(hry)/=2) print *,1001
    hry(2)=2
    if (hry(2)/=2) print *,800
    if (size(iry)/=2) print *,1001
    iry(2)=2
    if (iry(2)/=2) print *,800
    if (size(jry)/=2) print *,1001
    jry(2)=2
    if (jry(2)/=2) print *,800
    if (size(kry)/=2) print *,1001
    kry(2)=2
    if (kry(2)/=2) print *,800
  end block
end associate
print *,'pass'
end

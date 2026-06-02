n=2
associate( k=> n ,m=>n+1)
associate( o=>n+2)
  block 
    integer::ary(k)
   associate( p=>o+2)
    block
    integer::ary(k+1),bry(m+2),cry(o+3),dry(p+4)
    if (size(ary)/=3) print *,1001
    if (size(bry)/=5) print *,1002
    if (size(cry)/=7) print *,1003
    if (size(dry)/=p+4) print *,1004
    ary(3)=2
    if (ary(3)/=2) print *,800
    end block
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
end associate
  end block
end associate
end associate
print *,'sngg141p : pass'
end

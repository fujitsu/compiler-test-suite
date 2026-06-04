n=2
associate( k=> n)
  block 
    integer::ary(k)
    block
    integer::ary(k+1)
    if (size(ary)/=3) print *,1001
    ary(3)=2
    if (ary(3)/=2) print *,800
    end block
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
end associate
print *,'sngg140p : pass'
end

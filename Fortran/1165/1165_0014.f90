integer::k
n=2
associate( k=> n)
  block 
    integer::ary((k))
  block 
    integer::ary(k)
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
end associate
print *,'pass'
end

integer::k
n=2
associate( k=> n)
  block 
    integer::ary(k)
associate( m=> n)
    if (size(ary)/=m) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
end associate
  end block
end associate
print *,'sngg093p : pass'
end

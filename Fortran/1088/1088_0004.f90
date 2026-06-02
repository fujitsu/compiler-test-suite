integer::k
n=2
associate( k=> n)
  block 
    integer::ary(2)
    ary(k)=2
    if (ary(2)/=2) print *,800
  end block
end associate
print *,'sngg084p : pass'
end

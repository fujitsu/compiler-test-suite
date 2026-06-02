n=2
associate( k=> n)
  block 
    integer::ary(k,k+1)
    if (size(ary)/=6) print *,1001
    ary=reshape([1,2,3,4,5,6],[2,3])
    if (ary(2,3)/=6) print *,800
  end block
end associate
print *,'sngg089p : pass'
end

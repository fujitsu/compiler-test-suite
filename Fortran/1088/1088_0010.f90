n=2
associate( k=> n)
  block 
    integer,dimension(k)::ary,bry
    if (size(ary)/=2) print *,1001
    if (size(bry)/=2) print *,1002
    ary(2)=2
    if (ary(2)/=2) print *,800
    bry(2)=2
    if (bry(2)/=2) print *,8001
  end block
end associate
print *,'sngg090p : pass'
end

integer::k
n=2
associate( k=> n)
  block 
    integer,pointer::ary(:)
    integer,allocatable::bry(:)
    allocate(ary(k),bry(k))
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,801
    if (size(bry)/=2) print *,1101
    bry(2)=2
    if (bry(2)/=2) print *,810
  end block
end associate
print *,'sngg095p : pass'
end

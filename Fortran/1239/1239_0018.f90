implicit none
integer :: n,n1,k,k1
n=2
n1=1
associate( k1=> n1,k=> n)
  block 
    integer::ary(k1:k)
    character(k1+k) :: cha
associate( k2=> n)
  block 
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
    if (len(cha)/=3) print *,1002
    cha(1:2)='12'
    if (cha(2:2)/='2') print *,801
  end block
end associate
  end block
end associate
print *,'pass'
end

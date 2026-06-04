implicit none
integer :: n,k
n=2
associate( k=> n)
  block 
    integer::ary(k:k)
    character(k) :: cha
    if (size(ary)/=1) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
    if (len(cha)/=2) print *,1002
    cha(1:2)='12'
    if (cha(2:2)/='2') print *,801
  end block
end associate
print *,'pass'
end

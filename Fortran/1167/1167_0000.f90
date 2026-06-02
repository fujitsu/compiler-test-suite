implicit none
!!!integer::k
!integer ,parameter ::n=2
integer ::n
n=2
associate( k=> n)
  block
    integer,parameter::brr(2)=[1,2]
    integer::ary(brr(k))
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
end associate
print *,'sngg918q : pass'
end

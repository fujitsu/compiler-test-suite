implicit none
integer::k
integer ,parameter ::n(1)=2
associate( k=> n)
  block
    integer,parameter::brr(10)=2
    integer::ary(brr(k(1)))
    if (size(ary)/=2) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
end associate
print *,'pass'
end
subroutine sub(arr,k)
integer :: arr(k+0)
end

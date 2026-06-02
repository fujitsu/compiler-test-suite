implicit none
integer::k,n
n=2
associate( k=> n+2)
  block
    integer::ary(k+0)
    if (size(ary)/=4) print *,1001
    ary(2)=2
    if (ary(2)/=2) print *,800
  end block
end associate
print *,'pass'
end
subroutine sub(arr,k)
integer :: arr(k+0)
end

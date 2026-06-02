IMPLICIT NONE
integer :: ip=2
associate( k=> 1)
  block
    integer::ary(k,ip)
    if (size(ary)/=2) print *,1001!,size(ary)
  end block
end associate
print *,'pass'
end

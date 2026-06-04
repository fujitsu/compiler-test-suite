IMPLICIT NONE
integer::n(3)
n=[1,2,3]
associate( k=> n(2:3))
  block
    integer::ary(k(2))
    if (size(ary)/=3) print *,1001
  end block
end associate
print *,'pass'
end

integer::n(3)
n=[1,2,3]
associate( k=> n(2:3))
  block 
    integer::ary(k(2))
associate( m=> n(3))
    if (size(ary)/=m) print *,1001
end associate
  end block
end associate
print *,'sngg094p : pass'
end

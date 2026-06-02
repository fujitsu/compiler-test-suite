integer::n(3)
n=[1,2,3]
associate( k=> n(2:3))
  block 
    m=k(2)
    if (m/=3) print *,800
  end block
end associate
print *,'sngg082p : pass'
end

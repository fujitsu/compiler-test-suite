integer  ::x(1)
n=2
associate( k=> n)
  block 
    x=[k]
    if (x(1)/=2) print *,801
  end block
end associate
print *,'sngg099p : pass'
end

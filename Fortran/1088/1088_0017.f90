integer  ::x(2)
n=2
associate( k=> n)
  block 
    x=[k,k+1]
    if (x(1)/=2) print *,801
    if (x(2)/=3  ) print *,802
    if (size(x)/=2) print *,1102
  end block
end associate
print *,'sngg098p : pass'
end

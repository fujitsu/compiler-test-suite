n=3
associate( k=> n)
  block 
    character(k),dimension(2)::c
    if (len(c)/=3) print *,1001
  end block
end associate
print *,'sngg100p : pass'
end

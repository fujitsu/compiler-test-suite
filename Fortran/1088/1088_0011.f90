n=2
associate( k=> n)
  block 
    character(k)::a,b
    if (len(a)/=2) print *,1001
    if (len(b)/=2) print *,1002
    a(:)='1234'
    if (a(:)/='12') print *,800
    b(:)='1234'
    if (b(:)/='12') print *,8001
  end block
end associate
print *,'sngg091p : pass'
end

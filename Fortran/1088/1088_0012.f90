n=2
associate( k=> n)
  block 
    character::a*(k),b*(k+1)
    if (len(a)/=2) print *,1001
    if (len(b)/=3) print *,1002
    a(:)='1234'
    if (a(:)/='12') print *,800
    b(:)='1234'
    if (b(:)/='123') print *,8001
  end block
end associate
print *,'sngg092p : pass'
end

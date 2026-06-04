IMPLICIT NONE
integer::n,nn=3
n=2
associate( k1=>n,  m2=>nn)
  block 
    integer::a(k1)
    integer::b(m2)
    integer::c(size(b))

    if (size(a)/=2) print *,1001
    if (size(b)/=3) print *,1002
    if (size(c)/=3) print *,1003
  end block
end associate
print *,'sngg941q : pass'
end

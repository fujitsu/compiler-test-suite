subroutine s1
implicit none
integer::n,nn=2
n=2
associate( k1=> n,k2=>n,k3=>n)
  block 
    character(k1)::a1(k1:k1+1)
    character(k1)::a2(k2:k3+1)
    if (len (a1)/=2) print *,1002
    if (size(a1)/=2) print *,1001
    a1(2)='1'
    if (a1(2)/='1') print *,800
    if (len (a2)/=2) print *,1202
    if (size(a2)/=2) print *,1201
    a2(2)='1'
    if (a2(2)/='1')print *,820
  end block
end associate
associate( k1=> n)
associate( k2=> nn)
associate( k3=> k1)
  block 
    character(k1)::a1(k1:k1+1)
    character(k1)::a2(k2:k3+1)
    if (len (a1)/=2) print *,1002
    if (size(a1)/=2) print *,1001
    a1(2)='1'
    if (a1(2)/='1') print *,800
    if (len (a2)/=2) print *,1202
    if (size(a2)/=2) print *,1201
    a1(2)='1'
    if (a1(2)/='1') print *,800
  end block
end associate
end associate
end associate
end
call s1
print *,'sngg934q : pass'
end

subroutine s1
implicit none
integer::n,m
n=2
m=2
associate( k1=> n,k2=>n)
associate( k3=> k2)
  block 
    integer::a1(k1+k3-k3)
    integer::a2(m+k3-k3)
    integer::a3(k2+k3-k3)
    if (size(a1)/=2) print *,1001
    a1(2)=2
    if (a1(2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(2)=2
    if (a2(2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(2)=2
    if (a3(2)/=2) print *,830
  end block
end associate
end associate
end
subroutine s2
implicit none
integer::n,m=2
n=2
associate( k1=> n,k2=>n)
associate( k3=> 2)
  block 
    integer::a1(m +k3-k3)
    integer::a2(k1+k3-k3)
    integer::a3(k2+k3-k3)
    if (size(a1)/=2) print *,1001
    a1(2)=2
    if (a1(2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(2)=2
    if (a2(2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(2)=2
    if (a3(2)/=2) print *,830
  end block
end associate
end associate
end
subroutine s3
implicit none
integer::n,m=2
n=2
associate( k3=> 2)
associate( k1=> n,k2=>n)
  block 
    integer::a1(k1+k3-k3)
    integer::a2(k2+k3-k3)
    integer::a3(m +k3-k3)
    if (size(a1)/=2) print *,1001
    a1(2)=2
    if (a1(2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(2)=2
    if (a2(2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(2)=2
    if (a3(2)/=2) print *,830
  end block
end associate
end associate
end
subroutine s4
implicit none
integer::n,m=2
n=2
associate( k3=> 2)
associate( k1=> n)
associate( k2=>n)
  block 
    integer::a1(k1+k3-k3)
    integer::a2(k2+k3-k3)
    integer::a3(m +k3-k3)
    if (size(a1)/=2) print *,1001
    a1(2)=2
    if (a1(2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(2)=2
    if (a2(2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(2)=2
    if (a3(2)/=2) print *,830
  end block
end associate
end associate
end associate
end
subroutine s5
implicit none
integer::n,m=2
n=2
associate( k1=> n,k2=>n)
associate( k3=> k1+2-k2)
  block 
    integer::a1(k1+k3-k3)
    integer::a2(m +k3-k3)
    integer::a3(k2+k3-k3)
    if (size(a1)/=2) print *,1001
    a1(2)=2
    if (a1(2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(2)=2
    if (a2(2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(2)=2
    if (a3(2)/=2) print *,830
  end block
end associate
end associate
end
subroutine s6
implicit none
integer::n,m=2
n=2
associate( k1=> n,k2=>n,k3=>n)
  block 
    integer::a1(m +k3-k3)
    integer::a2(k2+k3-k3)
    integer::a3(k1+k3-k3)
    if (size(a1)/=2) print *,1001
    a1(2)=2
    if (a1(2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(2)=2
    if (a2(2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(2)=2
    if (a3(2)/=2) print *,830
  end block
end associate
end
call s1
call s2
call s3
call s4
call s5
call s6
print *,'sngg928q : pass'
end

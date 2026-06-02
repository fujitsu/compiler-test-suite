subroutine s1
implicit none
integer::n
n=2
associate( k1=> n,k2=>n)
  block 
    integer::a1(1,1,1,k1)
    integer::a2(1,1,1,n)
    integer::a3(1,1,1,k2)
    if (size(a1)/=2) print *,1001
    a1(1,1,1,2)=2
    if (a1(1,1,1,2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(1,1,1,2)=2
    if (a2(1,1,1,2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(1,1,1,2)=2
    if (a3(1,1,1,2)/=2) print *,830
  end block
end associate
end
subroutine s2
implicit none
integer::n
n=2
associate( k1=> n,k2=>n)
  block 
    integer::a1(1,1,1,n )
    integer::a2(1,1,1,k1)
    integer::a3(1,1,1,k2)
    if (size(a1)/=2) print *,1001
    a1(1,1,1,2)=2
    if (a1(1,1,1,2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(1,1,1,2)=2
    if (a2(1,1,1,2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(1,1,1,2)=2
    if (a3(1,1,1,2)/=2) print *,830
  end block
end associate
end
subroutine s3
implicit none
integer::n
n=2
associate( k1=> n,k2=>n)
  block 
    integer::a1(1,1,1,k1)
    integer::a2(1,1,1,k2)
    integer::a3(1,1,1,n )
    if (size(a1)/=2) print *,1001
    a1(1,1,1,2)=2
    if (a1(1,1,1,2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(1,1,1,2)=2
    if (a2(1,1,1,2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(1,1,1,2)=2
    if (a3(1,1,1,2)/=2) print *,830
  end block
end associate
end
subroutine s4
implicit none
integer::n
n=2
associate( k1=> n,k2=>n)
  block 
    integer::a1(1,1,1,k1)
    integer::a2(1,1,1,k2)
    integer::a3(1,1,1,2 )
    if (size(a1)/=2) print *,1001
    a1(1,1,1,2)=2
    if (a1(1,1,1,2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(1,1,1,2)=2
    if (a2(1,1,1,2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(1,1,1,2)=2
    if (a3(1,1,1,2)/=2) print *,830
  end block
end associate
end
subroutine s5
implicit none
integer::n
n=2
associate( k1=> n,k2=>n)
  block 
    integer::a1(1,1,1,k1)
    integer::a2(1,1,1,2 )
    integer::a3(1,1,1,k2)
    if (size(a1)/=2) print *,1001
    a1(1,1,1,2)=2
    if (a1(1,1,1,2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(1,1,1,2)=2
    if (a2(1,1,1,2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(1,1,1,2)=2
    if (a3(1,1,1,2)/=2) print *,830
  end block
end associate
end
subroutine s6
implicit none
integer::n
n=2
associate( k1=> n,k2=>n)
  block 
    integer::a1(1,1,1,2 )
    integer::a2(1,1,1,k2)
    integer::a3(1,1,1,k1)
    if (size(a1)/=2) print *,1001
    a1(1,1,1,2)=2
    if (a1(1,1,1,2)/=2) print *,800
    if (size(a2)/=2) print *,1201
    a2(1,1,1,2)=2
    if (a2(1,1,1,2)/=2) print *,820
    if (size(a3)/=2) print *,1301
    a3(1,1,1,2)=2
    if (a3(1,1,1,2)/=2) print *,830
  end block
end associate
end
call s1
call s2
call s3
call s4
call s5
call s6
print *,'sngg926q : pass'
end

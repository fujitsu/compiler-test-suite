subroutine s1
implicit none
integer::n
!!!    integer,parameter::a3(k2:3)=1
n=2
associate( k1=> n)
  block 
    integer::a1(k1:3)
    integer::a2(k1:3)
!    integer,parameter::a3(k2:3)=1
    if (size(a1)/=2) print *,1001
    if (size(a2)/=2) print *,1201
!   if (size(a3)/=2) print *,1301
  end block
end associate
end
call s1
print *,'sngg933q : pass'
end

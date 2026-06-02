IMPLICIT NONE
integer :: i1=1
integer :: ia1(1)=1
integer,parameter :: p1=1
integer,parameter :: pa1(1)=1
associate (n1 =>i1 )
associate (n2 =>ia1(1) )
associate (n3 =>p1 )
associate (n4 =>pa1(1) )
associate (n5 =>1 )
associate (n6 =>int(1) )
associate (n7 =>int(1)+0 )
associate (n8 =>n1 )
associate (n9 =>(/1/) )
associate (na =>ia1 )
associate (nb =>pa1 )
associate (nc =>pa1+0 )
associate (nd =>int(pa1) )
associate (ne =>int(ia1) )
 block
  integer ::arr1 (  n1 )
  integer ::arr2 (  n2 )
  integer ::arr3 (  n3 )
  integer ::arr4 (  n4 )
  integer ::arr5 (  n5 )
  integer ::arr6 (  n6 )
  integer ::arr7 (  n7 )
  integer ::arr8 (  n8 )
  integer ::arr9 (  n9(1) )
  integer ::arra (  na(1) )
  integer ::arrb (  nb(1) )
  integer ::arrc (  nc(1) )
  integer ::arrd (  nd(1) )
  integer ::arre (  ne(1) )
 if (n1 .ne.1) print *,'NG'
 if (n2 .ne.1) print *,'NG'
 if (n3 .ne.1) print *,'NG'
 if (n4 .ne.1) print *,'NG'
 if (n5 .ne.1) print *,'NG'
 if (n6 .ne.1) print *,'NG'
 if (n7 .ne.1) print *,'NG'
 if (n8 .ne.1) print *,'NG'
 if (n9(1) .ne.1) print *,'NG'
 if (na(1) .ne.1) print *,'NG'
 if (nb(1) .ne.1) print *,'NG'
 if (nc(1) .ne.1) print *,'NG'
 if (nd(1) .ne.1) print *,'NG'
 if (ne(1) .ne.1) print *,'NG'
 arr1=1;arr1=arr1
 arr2=1;arr2=arr2
 arr3=1;arr3=arr3
 arr4=1;arr4=arr4
 arr5=1;arr5=arr5
 arr6=1;arr6=arr6
 arr7=1;arr7=arr7
 arr8=1;arr8=arr8
 arr9=1;arr9=arr9
 arra=1;arra=arra
 arrb=1;arrb=arrb
 arrc=1;arrc=arrc
 arre=1;arre=arre
 arrd=1;arrd=arrd
 end block
end associate
end associate
end associate
end associate
end associate
end associate
end associate
end associate
end associate
end associate
end associate
end associate
end associate
end associate
print *,'pass'
end

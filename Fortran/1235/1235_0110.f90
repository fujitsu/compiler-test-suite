IMPLICIT NONE
character  :: i1='a'
character  :: ia1(1)='a'
character ,parameter :: p1='a'
character ,parameter :: pa1(1)='a'
associate (n1 =>i1 )
associate (n2 =>ia1(1) )
associate (n3 =>p1 )
associate (n4 =>pa1(1) )
associate (n5 =>'a' )
associate (n6 =>char(97) )
associate (n7 =>char(97)//'' )
associate (n8 =>n1 )
associate (n9 =>(/'a'/) )
associate (na =>ia1 )
associate (nb =>pa1 )
associate (nc =>pa1//'' )
associate (nd =>fun(pa1) )
associate (ne =>fun(ia1) )
 block
  integer ::arr1 (  len(n1) )
  integer ::arr2 (  len(n2) )
  integer ::arr3 (  len(n3) )
  integer ::arr4 (  len(n4) )
  integer ::arr5 (  len(n5) )
  integer ::arr6 (  len(n6) )
  integer ::arr7 (  len(n7) )
  integer ::arr8 (  len(n8) )
  integer ::arr9 (  len(n9(1)) )
  integer ::arra (  len(na(1)) )
  integer ::arrb (  len(nb(1)) )
  integer ::arrc (  len(nc(1)) )
  integer ::arrd (  len(nd(1)) )
  integer ::arre (  len(ne(1)) )
 if (size(arr1) .ne.1) print *,'NG1'
 if (size(arr2) .ne.1) print *,'NG2'
 if (size(arr3) .ne.1) print *,'NG3'
 if (size(arr4) .ne.1) print *,'NG4'
 if (size(arr5) .ne.1) print *,'NG5'
 if (size(arr6) .ne.1) print *,'NG6'
 if (size(arr7) .ne.1) print *,'NG7'
 if (size(arr8) .ne.1) print *,'NG8'
 if (size(arr9) .ne.1) print *,'NG9'
 if (size(arra) .ne.1) print *,'NGa'
 if (size(arrb) .ne.1) print *,'NGb'
 if (size(arrc) .ne.1) print *,'NGc'
 if (size(arrd) .ne.1) print *,'NGd'
 if (size(arre) .ne.1) print *,'NGe'
 if (n1 .ne.'a') print *,'NG1'
 if (n2 .ne.'a') print *,'NG2'
 if (n3 .ne.'a') print *,'NG3'
 if (n4 .ne.'a') print *,'NG4'
 if (n5 .ne.'a') print *,'NG5'
 if (n6 .ne.'a') print *,'NG6',n6
 if (n7 .ne.'a') print *,'NG7',n7
 if (n8 .ne.'a') print *,'NG8'
 if (n9(1) .ne.'a') print *,'NG9'
 if (na(1) .ne.'a') print *,'NGa'
 if (nb(1) .ne.'a') print *,'NGb'
 if (nc(1) .ne.'a') print *,'NacG'
 if (nd(1) .ne.'a') print *,'NadG'
 if (ne(1) .ne.'a') print *,'NGe'
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
contains 
pure function  fun(cha) result(arr)
character :: arr(1)
character,intent(in) :: cha(1)
arr=cha
end
end

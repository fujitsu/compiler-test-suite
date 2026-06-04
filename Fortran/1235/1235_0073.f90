implicit none
integer :: n1=1,n2=2,n3=3,n4=4,n5=5
associate( k1=> n1,k2=> n2)
  block 
   integer :: temp1
   integer :: arr1(k1)
   integer :: temp2
   integer :: arr2(k1,k2)
   integer :: temp3
associate( k3=> n3)
  block 
   integer :: temp4
   integer :: arr3(k1,k2,k3)
   integer :: temp5
associate( k4=> n4,k5=> n5)
  block 
   integer :: temp6
   integer :: arr4(k1,k2,k3,k4)
   integer :: temp7
   integer :: arr5(k1,k2,k3,k4,k5)
   integer :: temp8
    if (size(arr1)/=1) print *,1001
    if (size(arr2)/=2) print *,1001
    if (size(arr3)/=6) print *,1001
    if (size(arr4)/=24) print *,1001
    if (size(arr5)/=120) print *,1001
  end block
end associate
  end block
end associate
  end block
end associate
print *,'pass'
end

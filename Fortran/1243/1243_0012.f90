program main
  implicit none
  integer :: k,start1,end1,start2,end2,l,arr(5),i,arr2(5),m
  start1=1
  end1=5
  start2=2
  end2=4
  k=10
  l=30
  arr=(/ 1,2,3,4,5 /)
  do concurrent(k=start1:end1,m=2:3)
     do concurrent(l=start2:end2,arr(k) /= 3)
        if(l==1) then
           arr=(/ ( l+i,i=1,5,l) /)
        else if(l==5) then
           arr=(/ ( l+i,i=1,l) /)
        else
           arr=(/ ( l+i,i=1,5) /)
        end if
     end do
     arr2=(/ (arr(i),i=5,1,-1) /)
  end do
  if (arr(1)/=arr2(5) .or. arr(3)/=arr2(3) .or. arr(5)/=arr2(1) .or. k/=10 .or. l/=30) then
     print *,'fail',arr
     print *,'fail',arr2
  end if
  print *,'sngp021 : pass'
end program main

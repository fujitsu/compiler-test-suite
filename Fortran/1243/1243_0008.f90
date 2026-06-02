program main
  implicit none
  integer :: k,l,m,x,k2
  integer :: arr(5)
  x=0
  k=10
  l=30
  k2=10
  arr=(/ 1,2,3,4,5 /)
  do concurrent(k=1:5,arr(k)>=2)
     if(arr(k)==2 .or. arr(k)==4) then
        associate (val=> arr(k))
          do concurrent(k2=val:5,val>=4)
             x=x+k2
          end do
        end associate
        do concurrent(l=2:arr(k)+1,k<5)
           associate(val => arr(l))
             if(val==4) then
                do concurrent(m=3:val)
                   x=x+4
                end do
             else
                x=x+3
             end if
           end associate
        end do
     else
        x=x+1
     end if
  end do
  if (x/=34 .or.  k/=10 .or. l/=30) then
     print *,'fail',x
  end if
  print *,'sngp017 : pass'
end program main

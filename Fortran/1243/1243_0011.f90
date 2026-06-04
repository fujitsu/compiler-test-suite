program main
  implicit none
  integer :: index_var1=100, counter=0, index_var2
  outer : do concurrent (index_var1=10:3:-1)
     if (index_var1==7 .or. index_var1==5) cycle outer
     inner : do concurrent (index_var2=1:3, index_var1 /= index_var2)
        if (index_var2==1) cycle inner
        counter = counter + 1 
     end do inner
  end do outer
  if (counter /= 11 .or. index_var1 /= 100) then
     print *,'fail',counter,index_var1
  endif
  print *,'sngp020 : pass'
end program main

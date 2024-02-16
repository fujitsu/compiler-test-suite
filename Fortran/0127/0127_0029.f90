module data
  integer*8 array_def(100), array_ref1(100), array_ref2(100)
end module data

program main
  use data
  integer*8 i
  integer*8 tmp1, tmp2, tmp3, tmp4
  
  do i=1,100
     array_ref1(i) = i
     array_ref2(i) = i+1
  end do
  
  do i=1,50
     tmp1 = array_ref1(i) + 2
     tmp2 = array_ref2(i) + 3
     if (i < 25) then
        tmp1 = array_ref1(i)
        tmp2 = array_ref2(i)
     end if
     tmp3 = array_ref1(i) + 4
     tmp4 = array_ref2(i) + 5
     array_def(i) = tmp1 + tmp2 + tmp3 + tmp4
  end do
  
  if (array_def(10) == 51) then
     print *,"OK"
  else
     print *,"NG",array_def(10)
  end if
end program main


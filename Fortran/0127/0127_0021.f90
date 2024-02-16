program main
  integer*8 array_def(100), array_ref1(100), array_ref2(100)
  integer*8 i, tmp1, tmp2

  do i=1,100
     array_ref1(i) = i
     array_ref2(i) = i+1
     tmp1 = array_ref1(i) + array_ref2(i)
     tmp2 = array_ref1(i) + array_ref2(i)
     array_def(i) = tmp1 + tmp2
  end do

  print *,"OK"
end program main

program main
  integer*8 array_def(100), array_ref1(100), array_ref2(100)
  integer*8 i

  do i=1,100
     array_ref1(i) = i
     array_ref2(i) = i+1
     array_def(i)  = array_ref1(i) + array_ref2(i)
  end do

  print *,"OK"
end program main

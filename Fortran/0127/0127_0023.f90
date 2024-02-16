program main
  integer*8 array_def, array_ref1, array_ref2
  integer*8 i, tmp1, tmp2
  
  do i=1,100
     array_ref1 = i;
     array_ref2 = i+1;
     tmp1 = array_ref1 + array_ref2;
     tmp2 = array_ref1 + array_ref2;
     array_def = tmp1 + tmp2;
  end do

  print *,"OK"
end program main

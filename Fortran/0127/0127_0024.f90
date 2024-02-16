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

  if (array_def == 402) then
     print *,"OK"
  else
     print *,"NG",array_def
  end if
end program main

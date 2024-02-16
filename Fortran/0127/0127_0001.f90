program main
  integer*8 ans_sra(1)
  integer*8 array_ref2(1)
  
  array_ref2(1) = 1

  ans_sra(1) = ishft(array_ref2(1),2)

  if (ans_sra(1) == 4) then
     print *,"OK", ans_sra(1)
  else
     print *,"NG", ans_sra(1)
  end if
end program main

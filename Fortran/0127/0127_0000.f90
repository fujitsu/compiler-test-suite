program main
  integer*8 ans_sra
  integer*8 op2

  op2 = 1

  ans_sra = ishft(op2,2)

  if (ans_sra == 4) then
     print *,"OK", ans_sra
  else
     print *,"NG", ans_sra
  end if
end program main


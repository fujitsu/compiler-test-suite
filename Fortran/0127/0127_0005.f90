program main
  integer*8 ans_sra(100)
  integer*8 value1, value2, i

  do i=1,100
     if (mod(i,2) == 0) then
        value1 = 2
        value2 = 2
     else
        value1 = 3
        value2 = 3
     end if
     ans_sra(i) = ishft(value1,value2)
  end do
     
  if (ans_sra(10) == 8) then
     print *,"OK", ans_sra(10)
  else
     print *,"NG", ans_sra(10)
  end if
end program main


program main
  integer*8 ans_sra(100)
  integer*8 value, i

  do i=1,100
     if (mod(i,2) == 0) then
        value = 3
     end if
     value = 2
     ans_sra(i) = ishft(value,2)     
  end do
     
  if (ans_sra(10) == 8) then
     print *,"OK", ans_sra(10)
  else
     print *,"NG", ans_sra(10)
  end if
end program main


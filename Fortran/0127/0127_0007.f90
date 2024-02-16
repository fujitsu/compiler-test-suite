program main
  integer*8 ans_sra(100)
  integer*8 value, i

  do i=1,100
     value = 3
     if (mod(i,2) == 0) then
        value = 2
     end if
     ans_sra(i) = ishft(value,2)     
  end do
     
  if (ans_sra(10) == 8 .and. ans_sra(11) == 12) then
     print *,"OK", ans_sra(10), ans_sra(11)
  else
     print *,"NG", ans_sra(10), ans_sra(11)
  end if
end program main


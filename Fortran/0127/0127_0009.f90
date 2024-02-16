program main
  integer*8 ans_umin(100)
  integer*8 value1, value2, i

  do i=1,100
     value2 = 0
     if (mod(i,2) == 0) then
        value1 = -1
     else
        value1 = -2
     end if
     ans_umin(i) = value2 - value1
  end do

  if (ans_umin(10) == 1 .and. ans_umin(11) == 2) then
     print *,"OK", ans_umin(10), ans_umin(11)
  else
     print *,"NG", ans_umin(10), ans_umin(11)
  end if
end program main


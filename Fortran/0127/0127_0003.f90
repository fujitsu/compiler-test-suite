program main
  integer*8 ans_umin(1)
  integer*8 array_ref2(1)
  
  array_ref2(1) = -1

  ans_umin(1) = 0-array_ref2(1)

  if (ans_umin(1) == 1) then
     print *,"OK", ans_umin(1)
  else
     print *,"NG", ans_umin(1)
  end if
end program main

subroutine sub
  real(kind=2) :: valr2 = 2.0_2
  real(kind=8) :: valr8 = 2.0_8
  real(kind=4) :: valr4 = 2.0_4
  real(kind=4) :: ret
  
  print *,valr8
  print *,valr4

  if (valr2 .ne. 2.0) then
     print *, "NG"
  endif
  
  ret = real(valr2)
  print *,ret
end subroutine sub

program xyz
  call sub
end program xyz

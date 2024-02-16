subroutine sub
  real(kind=8) :: valr8 = 2.0_8
  real(kind=4) :: valr4 = 2.0_4
  real(kind=2) :: valr2 = 2.0_2
  complex(kind=8) :: valc8 = (2.0_8,3.0_8)
  complex(kind=4) :: valc4 = (2.0_4,3.0_4)
  complex(kind=2) :: valc2 = (2.0_2,3.0_2)

  if (valr8 .ne. 2.0) print *,"NG"
  if (valr4 .ne. 2.0) print *,"NG"
  if (valr2 .ne. 2.0) print *,"NG"
  if (valc8 .ne. (2.0,3.0)) print *,"NG"
  if (valc4 .ne. (2.0,3.0)) print *,"NG"
  if (valc2 .ne. (2.0,3.0)) print *,"NG"
end subroutine sub

program xyz
  call sub
  print *,"OK"
end program xyz

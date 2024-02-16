subroutine sub
  real(kind=16):: valr16= 0.0_16
  real(kind=8) :: valr8 = 0.0_8
  real(kind=4) :: valr4 = 0.0_4
  real(kind=2) :: valr2 = 0.0_2
  complex(kind=16):: valc16= (0.0_16,0.0_16)
  complex(kind=8) :: valc8 = (0.0_8,0.0_8)
  complex(kind=4) :: valc4 = (0.0_4,0.0_4)
  complex(kind=2) :: valc2 = (0.0_2,0.0_2)

  if (valr16.ne. 0.0) print *,"NG"
  if (valr8 .ne. 0.0) print *,"NG"
  if (valr4 .ne. 0.0) print *,"NG"
  if (valr2 .ne. 0.0) print *,"NG"
  if (valc16.ne. (0.0,0.0)) print *,"NG"
  if (valc8 .ne. (0.0,0.0)) print *,"NG"
  if (valc4 .ne. (0.0,0.0)) print *,"NG"
  if (valc2 .ne. (0.0,0.0)) print *,"NG"
end subroutine sub

program xyz
  call sub
  print *,"OK"
end program xyz

subroutine sub
  real(kind=16):: valr16(2)= 2.0_16
  real(kind=8) :: valr8(2) = 2.0_8
  real(kind=4) :: valr4(2) = 2.0_4
  real(kind=2) :: valr2(2) = 2.0_2
  complex(kind=16):: valc16(2)= (2.0_16,3.0_16)
  complex(kind=8) :: valc8(2) = (2.0_8,3.0_8)
  complex(kind=4) :: valc4(2) = (2.0_4,3.0_4)
  complex(kind=2) :: valc2(2) = (2.0_2,3.0_2)

  if (valr16(2).ne. 2.0) print *,"NG1"
  if (valr8(1) .ne. 2.0) print *,"NG2"
  if (valr4(2) .ne. 2.0) print *,"NG3"
  if (valr2(1) .ne. 2.0) print *,"NG4"
  if (valc16(2).ne. (2.0,3.0)) print *,"NG5"
  if (valc8(1) .ne. (2.0,3.0)) print *,"NG6"
  if (valc4(2) .ne. (2.0,3.0)) print *,"NG7"
  if (valc2(1) .ne. (2.0,3.0)) print *,"NG8"
end subroutine sub

subroutine sub2
  real(kind=16):: valr16(2)= (/1.0_16,2.0_16/)
  real(kind=8) :: valr8(2) = (/1.0_8,2.0_8/)
  real(kind=4) :: valr4(2) = (/1.0_4,2.0_4/)
  real(kind=2) :: valr2(2) = (/1.0_2,2.0_2/)
  complex(kind=16):: valc16(2)= (/(1.0_16,2.0_16),(3.0_16,4.0_16)/)
  complex(kind=8) :: valc8(2) = (/(1.0_8,2.0_8),(3.0_8,4.0_8)/)
  complex(kind=4) :: valc4(2) = (/(1.0_8,2.0_4),(3.0_8,4.0_4)/)
  complex(kind=2) :: valc2(2) = (/(1.0_8,2.0_2),(3.0_8,4.0_2)/)

  if (valr16(2).ne. 2.0) print *,"NG1"
  if (valr8(1) .ne. 1.0) print *,"NG2"
  if (valr4(2) .ne. 2.0) print *,"NG3"
  if (valr2(1) .ne. 1.0) print *,"NG4"
  if (valc16(2).ne. (3.0,4.0)) print *,"NG5"
  if (valc8(1) .ne. (1.0,2.0)) print *,"NG6"
  if (valc4(2) .ne. (3.0,4.0)) print *,"NG7"
  if (valc2(1) .ne. (1.0,2.0)) print *,"NG8"
end subroutine sub2

program xyz
  call sub
  call sub2
  print *,"OK"
end program xyz

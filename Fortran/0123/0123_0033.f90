subroutine sub
  real(kind=16) :: r16 = 2.345_16
  real(kind=8)  :: r8  = 2.345_8
  real(kind=4)  :: r4  = 2.345_4
  real(kind=2)  :: r2  = 2.345_2

  if (r16 .ne. 2.345_16) print *, "NG"
  if (r8 .ne. 2.345_8) print *, "NG"
  if (r4 .ne. 2.345_4) print *, "NG"
  if (r2 .ne. 2.345_2) print *, "NG"
end subroutine sub

program xyz
  call sub
  print *,"OK"
end program xyz


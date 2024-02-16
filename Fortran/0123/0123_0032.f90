subroutine sub
  real(kind=16) :: r16 = 3.0_16
  real(kind=8)  :: r8  = 3.0_8
  real(kind=4)  :: r4  = 3.0_4
  real(kind=2)  :: r2  = 3.0_2
  real(kind=4)  :: tmp

  print *, r16
  print *, r8
  print *, r4
  tmp = r2
  print *, tmp
end subroutine sub

program xyz
  call sub
end program xyz

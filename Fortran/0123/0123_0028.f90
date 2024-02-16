program xyz
  call sub1
  call sub2
end program xyz

subroutine sub1
  real(kind=2) :: r2(2) = 1.0
  real(kind=4) :: r4(2) = 1.0
  real(kind=8) :: r8(2) = 1.0
  real(kind=8) :: tmp(2)

  tmp=r2
  print*,tmp

  tmp=r4
  print*,tmp

  tmp=r8
  print*,tmp
end subroutine sub1

subroutine sub2
  complex(kind=2) :: c2(3) = (1.0,2.0)
  complex(kind=4) :: c4(3) = (1.0,2.0)
  complex(kind=8) :: c8(3) = (1.0,2.0)
  complex(kind=8) :: tmp(3)

  tmp=c2
  print*,tmp

  tmp=c4
  print*,tmp

  tmp=c8
  print*,tmp
end subroutine sub2

subroutine sub1
  real(kind=2) :: r2 = 1.0
  real(kind=4) :: r4 = 1.0
  real(kind=8) :: r8 = 1.0
  real(kind=8) :: tmp

  tmp=r2
  print*,tmp

  tmp=r4
  print*,tmp

  tmp=r8
  print*,tmp
end subroutine sub1

subroutine sub2
  complex(kind=2) :: c2 = (1.0,2.0)
  complex(kind=4) :: c4 = (1.0,2.0)
  complex(kind=8) :: c8 = (1.0,2.0)
  complex(kind=8) :: tmp

  tmp=c2
  print*,tmp

  tmp=c4
  print*,tmp

  tmp=c8
  print*,tmp
end subroutine sub2

program xyz
  call sub1
  call sub2
end program xyz

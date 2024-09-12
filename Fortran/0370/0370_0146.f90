
program top
  complex(kind=16),target  :: r1 = (1.0,2.0)
  complex(kind=16),pointer :: p1 => r1

  print *,r1,p1
  call sub
end program top

subroutine sub
  complex(kind=16),target :: r1 = (3.0,4.0)
  complex(kind=16),pointer :: p1 => r1

  print *,r1,p1
end subroutine sub


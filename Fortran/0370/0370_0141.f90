program top
  real(kind=8),target,dimension(3) :: r1 = 1.0
  real(kind=8),pointer,contiguous,dimension(:) :: p1=>r1

  print *,r1
  print *,p1
  call sub
end program top

subroutine sub
  real(kind=16),target,dimension(2) :: s1 = 2.0
  real(kind=16),pointer,contiguous,dimension(:) :: sp1=>s1

  print *,s1
  print *,sp1
end subroutine sub


program top
  implicit none
  interface
     subroutine sub(p,q)
       real(kind=8),pointer,intent(in) :: p
       real(kind=8),pointer,dimension(:),intent(in) :: q
     end subroutine sub
  end interface
  real(kind=8),target              :: r1 = 1.0
  real(kind=8),target,dimension(3) :: r2 = 2.0
  real(kind=8),pointer              :: p1 => r1
  real(kind=8),pointer,dimension(:) :: p2 => r2

  call sub(p1,p2)

  r2(2) = 100.0
  print *,p1
  print *,p2
end program top

subroutine sub(p1,p2)
  real(kind=8),pointer,intent(in) :: p1
  real(kind=8),pointer,dimension(:),intent(in) :: p2

  print *,p1
  print *,p2
end subroutine sub

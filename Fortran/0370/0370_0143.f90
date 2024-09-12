program top
  implicit none
  interface
     subroutine sub(p,q)
       real(kind=8),pointer :: p
       real(kind=8),pointer,dimension(:),optional :: q
     end subroutine sub
  end interface
  real(kind=8),target              :: r1 = 1.0
  real(kind=8),target,dimension(3) :: r2 = 2.0
  real(kind=8),pointer              :: p1 => r1
  real(kind=8),pointer,dimension(:) :: p2 => r2

  call sub(p1,p2)
  call sub(p1)
end program top

subroutine sub(p1,p2)
  real(kind=8),pointer :: p1
  real(kind=8),pointer,dimension(:),optional :: p2

  print *,"sub"
  print *,p1
  
  if (present(p2)) then
     print *,p2
  end if
end subroutine sub

subroutine f(ab, c, p, q)
  implicit none
  integer, parameter :: N = 128

  double precision :: c(N)

  type pair2
     double precision :: e(N), f(N)
  end type pair2

  type pair1
     type (pair2), allocatable :: ef1(:)
     type (pair2) :: ef2
  end type pair1

  type (pair1), target :: ab

  type (pair2), pointer :: p, q
  integer :: i

  p => ab%ef1(N)
  q => ab%ef2


  do i = 1, N
     ab%ef1(N)%e(i) =  ab%ef2%e(i) + c(i)
  enddo
end subroutine f
print *,'pass'
end


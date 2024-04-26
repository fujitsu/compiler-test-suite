module m1
  integer, parameter :: N = 128
  type pair2
     double precision :: e(N), f(N)
  end type pair2

  type pair1
     type (pair2), allocatable :: ef1(:)
     type (pair2) :: ef2
  end type pair1
contains
subroutine f(ab, c, p, q)
  implicit none

  double precision :: c(N)

  integer :: i
  type (pair1), target :: ab

  type (pair2), pointer :: p, q

  p => ab%ef1(N)
  q => ab%ef2

  do i = 1, N
     ab%ef1(N)%e(i) =  ab%ef2%e(i) + c(i)
  enddo
end subroutine f
end
subroutine s1
use m1
  type (pair1), target :: ab
  type (pair2), pointer :: p, q
  double precision :: c(N)

c=[(k,k=1,N)]
ab%ef2%e=[(k,k=1,N)]

allocate(ab%ef1(N))

call f(ab, c, p, q)

do i = 1, N
 if (abs(ab%ef1(N)%e(i) - i*2)>0.0001) print *,101,i
end do
end
call s1
print *,'pass'
end



module mod
contains
  subroutine foo(a,b,n)
    real(kind=8),dimension(1000,1000) :: a,b
!$omp parallel do
    do j=1,n
!$omp simd
       do i=1,n
          a(i,j) = a(i,j) + b(i,j)
       enddo
    enddo
!$omp end parallel do
  end subroutine foo
end module mod

program main
  use mod
  real(kind=8),dimension(1000,1000) :: a,b
  a = 1
  b = 2
  call foo(a,b,1000)
  if (all(a == 3)) then
     print *,"PASS"
  else
     print *,"NG"
  endif
end program main
!
! no diff

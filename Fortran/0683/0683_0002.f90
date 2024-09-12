subroutine sub()
  implicit none
  integer*8 i,j,n
  parameter(n=255)
  real*4 a,b
  common/com1/a(0:n,0:n)
  common/com2/b(0:n,0:n)
  !$omp simd collapse(2)
  do i=0,n
    do j=0,n
       a(j,i) = b(j,i) + 3
    end do
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=255)
  real*4 a,b
  common/com1/a(0:n,0:n)
  common/com2/b(0:n,0:n)
  b = 0
  call sub
  if (a(0,0) .eq. 3 .and. a(n,n) .eq. 3) then
     print *, "PASS"
  else
     print *, a(0,0), a(n,n)
  endif
end program

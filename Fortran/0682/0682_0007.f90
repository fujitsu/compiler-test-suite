subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  !$omp simd
  do i=1,n
     a(i) = b(i) + 2
!$omp ordered simd
     a(i) = a(i) + 1
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 n,i
  parameter(n=10003)
  integer*4 a,b
  common/com1/a(n)
  common/com2/b(n)
  do i=1,n
  b(i) = i
  enddo
  call sub
  if (a(1) .eq. 3+1 .and. a(n) .eq. 3+n) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program

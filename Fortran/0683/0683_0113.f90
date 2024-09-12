subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=8)
  integer*2 a
  integer*8 b
  common/com1/a(n)
  common/com2/b(n)  
  !$omp simd 
  do i=1,n
     a(i) = b(i) + 3
  end do
end subroutine

subroutine sub2()
  implicit none
  integer*8 i,n
  parameter(n=8)
  integer*2 a
  integer*8 b
  common/com1/a(n)
  common/com2/b(n)  
  !$omp simd 
  do i=1,n
     b(i) = a(i) + 1
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=8)
  integer*2 a
  integer*8 b
  common/com1/a(n)
  common/com2/b(n)  
  b = 0
  call sub
  call sub2
  if (a(1) .eq. 3 .and. a(n) .eq. 3) then
  else 
     print *, "a:", a(1), a(n)
     stop
  endif
  if (b(1) .eq. 4 .and. b(n) .eq. 4) then
  else 
     print *, "b:", b(1), b(n)
     stop
  endif
  print *, "PASS"
end program

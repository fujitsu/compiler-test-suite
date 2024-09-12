subroutine sub()
  implicit none
  integer*8 i
  common/com1/a
  integer*4 a(10000)
  integer*4 ss
  common/com2/ss
  !$omp simd reduction(+:ss)
  do i=1,10000
     a(i) = a(i) + 1
!$omp ordered simd
     ss = ss + a(i)
!$omp end ordered
  end do
end subroutine

program main
  implicit none
  integer*8 i
  integer*4 a
  integer*4 ss
  common/com1/a(10000)
  common/com2/ss
  ss =0
  do i=1,10000
     a(i) = i-1
  end do
  call sub()
  if (ss .eq. 50005000.0) then
     print *, "PASS"
  else
     print *, ss
  endif
end program

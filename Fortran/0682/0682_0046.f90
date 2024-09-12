subroutine sub()
  implicit none
  integer*8 i
  common/com_array/a
  integer*4 a(10000),ss
  common/com_ss/ss
  !$omp simd reduction(+:ss)
  do i=1,10000
!$omp ordered  simd
     a(i) = a(i) + 1
!$omp end ordered
     ss = ss + a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i
  integer*4 a,ss
  common/com_array/a(10000)
  common/com_ss/ss
  ss =0
  do i=1,10000
     a(i) = i-1
  end do
  call sub()
  if (ss .eq. 50005000) then
     print *, "PASS"
  else
     print *, ss
  endif
end program

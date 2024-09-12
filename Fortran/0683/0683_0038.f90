!
!
subroutine sub()
  integer(kind=8), dimension(1:64) :: src1,dest
  common/com/src1,dest
  !$omp simd
  do i=1,64
     dest(i) = maskr(src1(i),8)
  enddo
end subroutine sub

program main
  implicit none
  integer*8 n,i
  parameter(n=64)
  integer(kind=8), dimension(1:n):: src1, dest
  common/com/src1,dest
  do i=1,64
     src1(i) = i
  enddo
  call sub()
  if (dest(1) .eq. 1 .and. dest(n) .eq. -1) then
     print *, "PASS"
  else
     print *,  dest(1)
     print *,  dest(n)
  endif
end program

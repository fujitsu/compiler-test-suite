!
!
subroutine sub_i8()
  integer(kind=8), dimension(1:64) :: src1,dest
  common/com/src1,dest
  !$omp simd
  do i=1,64
     dest(i) = ishftc(src1(i),-2)
  enddo
end subroutine sub_i8

program main
  implicit none
  integer*8 n,i
  parameter(n=64)
  integer(kind=8), dimension(1:n):: src1, dest
  common/com/src1,dest
  do i=1,64
     src1(i) = i
  enddo
  call sub_i8()
  if (dest(1) .eq. 4611686018427387904_8 .and. dest(n) .eq. 16) then
     print *, "PASS"
  else
     print *,  dest(1)
     print *,  dest(n)
  endif
end program

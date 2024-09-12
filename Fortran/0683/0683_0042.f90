!
!
subroutine sub()
  integer*8 n,i
  parameter(n=1003)
  integer(kind=1), dimension(1:n) :: src1,src2,dest
  logical(kind=4), dimension(1:n) :: src3
  common/com1/src1
  common/com2/src2
  common/com3/src3
  common/com4/dest
  !$omp simd
  do i=1,n
     dest(i) = merge(src1(i),src2(i),src3(i))
  enddo
end subroutine sub

program main
  implicit none
  integer*8 n,i
  parameter(n=1003)
  integer(kind=4) t
  integer(kind=1), dimension(1:n) :: src1,src2,dest
  logical(kind=4), dimension(1:n) :: src3
  common/com1/src1
  common/com2/src2
  common/com3/src3
  common/com4/dest
  do i=1,n
     src1(i) = i
     src2(i) = -i
     src3(i) = mod(i,2) .eq. 0
  enddo
  call sub()
  do i=1,n
     if (src3(i)) then
       t = src1(i)
     else
       t = src2(i)
     endif
     if (dest(i) .ne. t) then
       print *,'NG'
       stop
     endif
  enddo
  print *, "PASS"
end program

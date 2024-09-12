!
!
subroutine sub()
  integer*8 n,i
  parameter(n=1003)
  integer(kind=8), dimension(1:n) :: src1,src2,dest
  integer(kind=8), dimension(1:n) :: src31, src32
  common/com1/src1
  common/com2/src2
  common/com31/src31
  common/com32/src32
  common/com4/dest
  !$omp simd
  do i=1,n
     dest(i) = merge(src1(i),src2(i),src31(i).eq.src32(i))
  enddo
end subroutine sub

program main
  implicit none
  integer*8 n,i
  parameter(n=1003)
  integer(kind=4) t
  integer(kind=8), dimension(1:n) :: src1,src2,dest
  integer(kind=8), dimension(1:n) :: src31, src32
  common/com1/src1
  common/com2/src2
  common/com31/src31
  common/com32/src32
  common/com4/dest
  do i=1,n
     src1(i) = i
     src2(i) = -i
     src31(i) = mod(i,2)
     src32(i) = 0
  enddo
  call sub()
  do i=1,n
     if (src31(i).eq.src32(i)) then
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

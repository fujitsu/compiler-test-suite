!
!
subroutine sub_i1(a, n)
  implicit none
  integer*8 i,n
  integer*1 a(n),ss
  common/com_i1/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     ss = ss + a(i)
  end do
end subroutine

subroutine sub_i2(a, n)
  implicit none
  integer*8 i,n
  integer*2 a(n),ss
  common/com_i2/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     ss = ss + a(i)
  end do
end subroutine

subroutine sub_i4(a, n)
  implicit none
  integer*8 i,n
  integer*4 a(n),ss
  common/com_i4/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     ss = ss + a(i)
  end do
end subroutine

subroutine sub_i8(a, n)
  implicit none
  integer*8 i,n
  integer*8 a(n),ss
  common/com_i8/ss
  !$omp simd reduction(+:ss)
  do i=1,n
     ss = ss + a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*1 a_i1(n),ss_i1
  integer*2 a_i2(n),ss_i2
  integer*4 a_i4(n),ss_i4
  integer*8 a_i8(n),ss_i8
  common/com_i1/ss_i1
  common/com_i2/ss_i2
  common/com_i4/ss_i4
  common/com_i8/ss_i8
  ss_i1 =0
  ss_i2 =0
  ss_i4 =0
  ss_i8 =0
  do i=1,n
     a_i1(i) = i
     a_i2(i) = i
     a_i4(i) = i
     a_i8(i) = i
  end do
  call sub_i1(a_i1, n)
  call sub_i2(a_i2, n)
  call sub_i4(a_i4, n)
  call sub_i8(a_i8, n)
  if (ss_i1 .ne. 62) then
     print *, ss_i1
     stop "i1"
  endif
  if (ss_i2 .ne. 31038) then
     print *, ss_i2
     stop "i2"
  endif
  if (ss_i4 .ne. 50035006) then
     print *, ss_i4
     stop "i4"
  endif
  if (ss_i8 .ne. 50035006_8) then
     print *, ss_i8
     stop "i8"
  endif
  print *, "PASS"
end

!
!
subroutine sub_i1(a, n)
  implicit none
  integer*8 i,n
  logical*1 a(n),ss
  common/com_i1/ss
  !$omp simd reduction(.and.:ss)
  do i=1,n
     ss = ss .and. a(i)
  end do
end subroutine

subroutine sub_i2(a, n)
  implicit none
  integer*8 i,n
  logical*2 a(n),ss
  common/com_i2/ss
  !$omp simd reduction(.and.:ss)
  do i=1,n
     ss = ss .and. a(i)
  end do
end subroutine

subroutine sub_i4(a, n)
  implicit none
  integer*8 i,n
  logical*4 a(n),ss
  common/com_i4/ss
  !$omp simd reduction(.and.:ss)
  do i=1,n
     ss = ss .and. a(i)
  end do
end subroutine

subroutine sub_i8(a, n)
  implicit none
  integer*8 i,n
  logical*8 a(n),ss
  common/com_i8/ss
  !$omp simd reduction(.and.:ss)
  do i=1,n
     ss = ss .and. a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 i,n
  parameter(n=10003)
  logical*1 a_i1(n),ss_i1
  logical*2 a_i2(n),ss_i2
  logical*4 a_i4(n),ss_i4
  logical*8 a_i8(n),ss_i8
  common/com_i1/ss_i1
  common/com_i2/ss_i2
  common/com_i4/ss_i4
  common/com_i8/ss_i8
  ss_i1 =.true.
  ss_i2 =.true.
  ss_i4 =.true.
  ss_i8 =.true.
  a_i1 = .true.
  a_i2 = .true.
  a_i4 = .true.
  a_i8 = .true.
  call sub_i1(a_i1, n)
  call sub_i2(a_i2, n)
  call sub_i4(a_i4, n)
  call sub_i8(a_i8, n)
  if (.not.ss_i1) then
     print *, ss_i1
     stop "i1"
  endif
  if (.not.ss_i2) then
     print *, ss_i2
     stop "i2"
  endif
  if (.not.ss_i4) then
     print *, ss_i4
     stop "i4"
  endif
  if (.not.ss_i8) then
     print *, ss_i8
     stop "i8"
  endif
  print *, "PASS"
end

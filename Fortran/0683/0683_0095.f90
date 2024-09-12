!
!
subroutine sub_l1(a, n)
  implicit none
  integer*8 i,n
  logical*1 a(n),ss
  common/com_l1/ss
  !$omp simd reduction(.eqv.:ss)
  do i=1,n
     ss = ss .eqv. a(i)
  end do
end subroutine

subroutine sub_l2(a, n)
  implicit none
  integer*8 i,n
  logical*2 a(n),ss
  common/com_l2/ss
  !$omp simd reduction(.eqv.:ss)
  do i=1,n
     ss = ss .eqv. a(i)
  end do
end subroutine

subroutine sub_l4(a, n)
  implicit none
  integer*8 i,n
  logical*4 a(n),ss
  common/com_l4/ss
  !$omp simd reduction(.eqv.:ss)
  do i=1,n
     ss = ss .eqv. a(i)
  end do
end subroutine

subroutine sub_l8(a, n)
  implicit none
  integer*8 i,n
  logical*8 a(n),ss
  common/com_l8/ss
  !$omp simd reduction(.eqv.:ss)
  do i=1,n
     ss = ss .eqv. a(i)
  end do
end subroutine

program main
  implicit none
  integer*8 n
  parameter(n=10003)
  logical*1 a_l1(n),ss_l1
  logical*2 a_l2(n),ss_l2
  logical*4 a_l4(n),ss_l4
  logical*8 a_l8(n),ss_l8
  common/com_l1/ss_l1
  common/com_l2/ss_l2
  common/com_l4/ss_l4
  common/com_l8/ss_l8
  ss_l1 =.true.
  ss_l2 =.true.
  ss_l4 =.true.
  ss_l8 =.true.
  a_l1 = .true.
  a_l2 = .true.
  a_l4 = .true.
  a_l8 = .true.
  call sub_l1(a_l1, n)
  call sub_l2(a_l2, n)
  call sub_l4(a_l4, n)
  call sub_l8(a_l8, n)
  if (.not.ss_l1) then
     print *, ss_l1
     stop "l1"
  endif
  if (.not.ss_l2) then
     print *, ss_l2
     stop "l2"
  endif
  if (.not.ss_l4) then
     print *, ss_l4
     stop "l4"
  endif
  if (.not.ss_l8) then
     print *, ss_l8
     stop "l8"
  endif
  a_l1(n/2) = .false.
  a_l2(n/2) = .false.
  a_l4(n/2) = .false.
  a_l8(n/2) = .false.
  call sub_l1(a_l1, n)
  call sub_l2(a_l2, n)
  call sub_l4(a_l4, n)
  call sub_l8(a_l8, n)
  if (ss_l1) then
     print *, ss_l1
     stop "l1"
  endif
  if (ss_l2) then
     print *, ss_l2
     stop "l2"
  endif
  if (ss_l4) then
     print *, ss_l4
     stop "l4"
  endif
  if (ss_l8) then
     print *, ss_l8
     stop "l8"
  endif
  print *, "PASS"
end

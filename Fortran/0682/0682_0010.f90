subroutine test0
  implicit none
  integer*4 i,a, n
  parameter(n=10003)
  common /com1/a(n)
  interface
     subroutine sub(i)
       integer*4,intent(in)::i
     end subroutine sub
  end interface
  !$omp simd
  do i=1,10003
!$omp ordered simd
     call sub(i)
!$omp end ordered
     a(i) = a(i) + 1
  end do
  if (a(1) .eq. 1+1 .and. a(n) .eq. n+1) then
  else
     print *, a(1), a(n)
     stop "NG1"
  endif
end subroutine

subroutine test1
  implicit none
  integer*4 i,a, n
  parameter(n=10003)
  common /com1/a(n)
  interface
     subroutine sub(i)
       integer*4,intent(in)::i
     end subroutine sub
  end interface
  !$omp simd
  do i=1,10003
     call sub(i)
!$omp ordered simd
     a(i) = a(i) + 1
!$omp end ordered
  end do
  if (a(1) .eq. 1+1 .and. a(n) .eq. n+1) then
  else
     print *, a(1), a(n)
     stop "NG2"
  endif
end subroutine

subroutine sub(i)
  integer*4,intent(in)::i
  integer*4 a
  common /com1/a(10003)
  a(i) = i
end subroutine sub

program main
  call test0
  call test1
  print *, 'PASS'
end program main

subroutine init(a, b)
  integer, dimension(100000) :: a, b
  integer :: n, i
  n = 100000
  do i=1,n
     a(i) = 0
     b(i) = 0
  end do
end subroutine init

subroutine test_a(a)
  integer, dimension(100000) :: a
  integer :: n, i
  n = 100000
  do i=1,n
     if (a(i) .ne. 1) then
     print *, "NG", i
     end if
  end do
end subroutine test_a

subroutine test_b(b)
  integer, dimension(100000) :: b
  integer :: n, i
  n = 100000
  do i=1,n
     if (b(i) .ne. 2) then
     print *, "NG", i
     end if
  end do
end subroutine test_b

subroutine sub1(a)
  integer, dimension(100000) :: a
  integer :: n, i
  n = 100000

  !$omp taskgroup  
  do i=1,n
     !$omp task shared(a)
     !$omp atomic write
     a(i) = 1
     !$omp end task
  end do
  !$omp end taskgroup

end subroutine sub1

subroutine sub2(b)
  integer, dimension(100000) :: b
  integer :: n, i
  n = 100000

  !$omp taskgroup  
  do i=1,n
     !$omp task shared(b)
     !$omp atomic write
     b(i) = 2
     !$omp end task
  end do
  !$omp end taskgroup

end subroutine sub2

program main
  integer, parameter :: task_num=100000
  integer, dimension(task_num) :: a, b

  call init(a, b)
  
  !$omp parallel
  !$omp sections
  !$omp section
  call sub1(a)
  call test_a(a)
  !$omp section
  call sub2(b)
  call test_b(b)
  !$omp end sections 
  !$omp end parallel

  print *, "OK"

end program main

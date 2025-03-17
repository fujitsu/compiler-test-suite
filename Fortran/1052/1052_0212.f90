subroutine init(a, flag)
  integer, dimension(100) :: a
  integer :: flag, n, i
  n = 100
  flag = 0
  do i=1,n
     a(i) = 0
  end do
end subroutine init

subroutine test(a, flag)
  integer, dimension(100) :: a
  integer :: flag, n, i
  n = 100
  do i=1,n
     if (a(i) .ne. 1) then
     flag = flag + 1
     end if
  end do
end subroutine test

subroutine sub(a)
  integer, dimension(100) :: a
  integer :: n, i
  n = 100

  !$omp taskgroup  
  do i=1,n
     !$omp task shared(a)
     a(i) = 1
     !$omp end task
  end do
  !$omp end taskgroup

end subroutine sub

program main
  integer, parameter :: task_num=100
  integer, dimension(task_num) :: a
  integer :: flag = 0
  
  !$omp parallel
  !$omp critical
  call init(a, flag)
  call sub(a)
  call test(a, flag)
  !$omp end critical
  !$omp end parallel

  if (flag .ne. 0) then
     print *, "NG", flag
  end if

  print *, "OK"

end program main

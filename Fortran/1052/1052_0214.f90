subroutine init(a, flag)
  integer, dimension(100000) :: a
  integer :: flag, n, i
  n = 100000
  flag = 0
  do i=1,n
     a(i) = 0
  end do
end subroutine init

subroutine sub(a, i)
  integer, dimension(100000) :: a
  
  !$omp taskgroup
  !$omp task shared(a) firstprivate(i)
  !$omp atomic write
  a(i) = 1
  !$omp end task
  !$omp end taskgroup
  
end subroutine sub

subroutine test(a, flag)
  integer, dimension(100000) :: a
  integer :: flag, n, i
  n = 100000
  do i=1,n
     if (a(i) .ne. 1) then
     flag = 1
     end if
  end do
end subroutine test

program main
  integer, parameter :: task_num=100000
  integer, dimension(task_num) :: a
  integer :: flag, i

  call init(a, flag)

  !$omp parallel private(i)
  !$omp single
  !$omp taskgroup
  do i=1,task_num
     !$omp task shared(a) firstprivate(i)
     !$omp atomic write
     a(i) = 2
     call sub(a, i)
     !$omp end task
  end do
  !$omp end taskgroup
  !$omp end single
  !$omp end parallel
  
  call test(a, flag)

  if (flag .eq. 1) then
     print *, "NG"
  end if
  print *, "OK"

end program main

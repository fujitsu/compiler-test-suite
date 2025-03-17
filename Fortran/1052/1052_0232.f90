subroutine init(a, flag)
  integer, dimension(100000) :: a
  integer :: flag, n, i
  n = 100000
  flag = 0
  do i=1,n
     a(i) = 0
  end do
end subroutine init

subroutine sub2(a, i)
  integer, dimension(100000) :: a
  !$omp task shared(a)
  !$omp atomic write
  a(i) = 1
  !$omp end task
  !$omp taskwait
end subroutine sub2

subroutine sub1(a, i)
  integer, dimension(100000) :: a
  !$omp task shared(a)
  call sub2(a, i)
  !$omp end task
  !$omp taskwait  
end subroutine sub1

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
  do i=1,task_num
     !$omp taskgroup
     !$omp task shared(a)
     call sub1(a, i)
     !$omp end task
     !$omp end taskgroup
  end do
  !$omp end single
  call test(a, flag)
  !$omp end parallel

  if (flag .eq. 1) then
     print *, "NG"
  end if
  print *, "OK"

end program main

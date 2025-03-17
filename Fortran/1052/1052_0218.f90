subroutine init(a, b, flag)
  integer, dimension(100000) :: a, b
  integer :: flag, n, i
  n = 100000
  flag = 0
  do i=1,n
     a(i) = 0
     b(i) = 0
  end do
end subroutine init

subroutine sub(a, b)
  integer, dimension(100000) :: a, b
  integer :: n, i
  n = 100000
  !$omp taskgroup
  !$omp sections
  !$omp section
  do i=1,n
     !$omp task shared(a)
     a(i) = 1
     !$omp end task
  end do

  !$omp section
  do i=1,n
     !$omp task shared(b)
     b(i) = 2
     !$omp end task
  end do

  !$omp end sections
  !$omp end taskgroup
end subroutine sub

subroutine test(a, b, flag)
  integer, dimension(100000) :: a, b
  integer :: flag, n, i
  n = 100000
  do i=1,n
     if ((a(i) .ne. 1) .or. (b(i) .ne. 2)) then
     flag = 1
     end if
  end do
end subroutine test

program main
  integer, parameter :: task_num=100000
  integer, dimension(task_num) :: a, b
  integer :: flag

  call init(a, b, flag)

  !$omp parallel
  call sub(a, b)
  call test(a, b, flag)
  !$omp end parallel

  if (flag .eq. 1) then
     print *, "NG"
  end if
  print *, "OK"

end program main

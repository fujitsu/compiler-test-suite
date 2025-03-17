subroutine init(a, flag)
  integer, dimension(100000) :: a
  integer :: flag, n, i
  n = 100000
  flag = 0
  do i=1,n
     a(i) = 0
  end do
end subroutine init

subroutine sub(a)
  integer, dimension(100000) :: a
  integer :: n, i
  n = 100000
  !$omp taskgroup
  do i=1,n
     a(i) = 2
     !$omp flush
     a(i) = 1
  end do
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
  integer :: flag

  call init(a, flag)

  !$omp parallel
  call sub(a)
  !$omp end parallel
  
  call test(a, flag)

  if (flag .eq. 1) then
     print *, "NG"
  end if
  print *, "OK"

end program main

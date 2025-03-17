subroutine init(a, b, c, flag)
  integer, dimension(100000) :: a, b, c
  integer :: flag, n, i
  n = 100000
  flag = 0
  do i=1,n
     a(i) = 1
     b(i) = 0
     C(i) = 0
  end do
end subroutine init

subroutine sub(a, b, c)
  integer, dimension(100000) :: a, b, c
  !$omp taskgroup
  !$omp workshare
  b = a
  c = b
  !$omp end workshare
  !$omp end taskgroup
end subroutine sub

subroutine test(c, flag)
  integer, dimension(100000) :: c
  integer :: flag, n, i
  n = 100000
  do i=1,n
     if (c(i) .ne. 1) then
     flag = 1
     end if
  end do
end subroutine test

program main
  integer, parameter :: task_num=100000
  integer, dimension(task_num) :: a, b, c
  integer :: flag

  call init(a, b, c, flag)

  !$omp parallel
  call sub(a, b, c)
  !$omp end parallel
  
  call test(c, flag)

  if (flag .eq. 1) then
     print *, "NG"
  end if
  print *, "OK"

end program main

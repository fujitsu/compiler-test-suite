subroutine init(a)
  integer, dimension(100000) :: a
  integer :: n, i
  n = 100000
  do i=1,n
     a(i) = 1
  end do
end subroutine init

subroutine sub(a, sum)
  integer, dimension(100000) :: a
  integer :: n, sum, i
  n = 100000

  do i=1,n
  !$omp taskgroup
     !$omp atomic update
     sum = sum + a(i)
  !$omp end taskgroup
  end do

end subroutine sub

program main
  integer, parameter :: task_num=100000
  integer, dimension(task_num) :: a
  integer :: sum
  sum = 0

  call init(a)

  !$omp parallel
  !$omp single
  call sub(a, sum)
  !$omp end single
  !$omp end parallel
  
  if (sum .ne. task_num) then
     print *, "NG"
  end if
  print *, "OK"

end program main

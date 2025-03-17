module m1
  integer::sum
end module m1

subroutine sub2()
  use m1
  !$omp atomic update
  sum = sum + 1
end subroutine sub2

subroutine sub1()
  use m1
  !$omp atomic update
  sum = sum + 1
  !$omp task
  call sub2()
  !$omp end task
end subroutine sub1

program main
  use m1
  integer::i
  integer,parameter::task_num=100

  sum=0

  !$omp parallel
  !$omp single
  !$omp taskgroup
  do i=1,task_num
     !$omp task
     call sub1()
     !$omp end task
  end do
  !$omp end taskgroup

  if (sum .ne. task_num*2) then
     print *, 'NG'
  endif

  !$omp end single
  !$omp end parallel

  print *, 'OK'

end program main

program xx
  integer(kind=8),target :: t1 = 5
  integer(kind=8),pointer :: p1=>t1

  !$omp threadprivate(t1,p1)
  !$omp parallel
  p1=>t1
  t1=t1+1

  print *, t1
  print *, p1
  !$omp end parallel
end program

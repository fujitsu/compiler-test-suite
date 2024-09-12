subroutine sub1()
  integer :: a=100
  !$omp parallel firstprivate(a) 
    if (a /= 100) print *,11
    a = 200
  !$omp end parallel
  if (a /= 100) print *,12
end

subroutine sub2()
  integer :: a=100
  !$omp parallel firstprivate(a) default(private)
    if (a /= 100) print *,11
    a = 200
  !$omp end parallel
  if (a /= 100) print *,12
end

subroutine sub3()
  integer :: a=100
  !$omp parallel firstprivate(a) default(firstprivate)
    if (a /= 100) print *,11
    a = 200
  !$omp end parallel
  if (a /= 100) print *,12
end

subroutine sub4()
  integer :: a=100
  !$omp parallel default(firstprivate)
    if (a /= 100) print *,11
    a = 200
  !$omp end parallel
  if (a /= 100) print *,12
end

call sub1
call sub2
call sub3
call sub4
print *,'pass'
end

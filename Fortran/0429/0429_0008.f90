subroutine sub1()
  integer :: a = 100
  !$omp parallel firstprivate(a)
    if (a /= 100) print *,11
    a = 200
    !$omp parallel firstprivate(a)
      if (a /= 200) print *,21
      a = 400
    !$omp end parallel
    if (a /= 200) print *,31
  !$omp end parallel
  if (a /= 100) print *,41
end subroutine

subroutine sub2()
  integer :: a = 100
  !$omp parallel private(a)
    a=200
    !$omp parallel firstprivate(a)
      if (a /= 200) print *,12
      a = 300
    !$omp end parallel
    if (a /= 200) print *,22
  !$omp end parallel
  if (a /= 100) print *,32
end

subroutine sub3()
  integer :: a = 100
  !$omp parallel shared(a)
    a=200
    !$omp barrier
    !$omp parallel firstprivate(a)
      if (a /= 200) print *,13
      a = 300
    !$omp end parallel
    if (a /= 200) print *,23
    !$omp barrier
    a = 400
  !$omp end parallel
  if (a /= 400) print *,33
end subroutine

subroutine sub4()
  integer :: a = 100
  !$omp parallel reduction(max:a)
    a = 200
    !$omp parallel firstprivate(a)
      if (a/=200) print *,14
      a = 300
    !$omp end parallel
    if (a/=200) print *,24
    a = 400
  !$omp end parallel
  if (a/=400) print *,34
end

call sub1
call sub2
call sub3
call sub4
print *,'pass'
end

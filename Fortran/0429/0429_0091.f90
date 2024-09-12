subroutine s1
  integer a
  a = 10
  !$omp parallel workshare
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=40) print *,41
end

subroutine s2
  integer a
  a = 10
  !$omp parallel workshare shared(a)
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=40) print *,42
end

subroutine s3
  integer a
  a = 10
  !$omp parallel workshare default(shared)
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=40) print *,43
end

subroutine s4
  integer a
  a = 10
  !$omp parallel workshare private(a)
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=10) print *,44
end

subroutine s5
  integer a
  a = 10
  !$omp parallel workshare default(private)
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=10) print *,45
end

subroutine s6
  integer a
  a = 10
  !$omp parallel workshare firstprivate(a)
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=10) print *,46
end

subroutine s7
  integer a
  a = 10
  !$omp parallel workshare default(firstprivate)
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=10) print *,47
end

subroutine s8
  integer a
  a = 10
  !$omp parallel workshare reduction(max:a)
    a=20
    !$omp parallel default(private)
      a=30
    !$omp end parallel
    a=40
  !$omp end parallel workshare
  if (a/=40) print *,48
end

call s1
call s2
call s3
call s4
call s5
call s6
call s7
call s8
print *,'pass'
end

subroutine sub1()
integer::a
a=100
!$omp sections firstprivate(a)
  if (a/=100) print *,11
  a = 200
  !$omp parallel default(private)
    a = 300
  !$omp end parallel
  if (a/=200) print *,31
  a = 400
!$omp end sections
if (a/=100) print *,41
end

subroutine sub2()
integer::a
a=100
!$omp sections private(a)
  a = 200
  !$omp parallel default(private)
    a = 300
  !$omp end parallel
  if (a/=200) print *,32
  a = 400
!$omp end sections
if (a/=100) print *,42
end

subroutine sub3()
integer :: a
a=100
!$omp sections reduction(max:a)
  a=200
  !$omp parallel default(private)
    a = 300
  !$omp end parallel
  if (a/=200) print *,23
  a=400
!$omp end sections
if (a/=400) print *,33
end

subroutine sub4()
integer :: a
a=100
!$omp sections lastprivate(a)
  a=200
  !$omp parallel default(private)
  a=300
  !$omp end parallel
  if (a/=200) print *,24
  a=400
!$omp end sections
if (a/=400) print *,34
end

call sub1
call sub2
call sub3
call sub4
print *,'pass'
end

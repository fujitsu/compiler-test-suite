subroutine sub1()
integer :: a
a=100
!$omp task firstprivate(a)
  if (a /= 100) print *,11
  a = 200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a /= 200) print *,31
  a = 400
!$omp end task
if (a/=100) print *,41
end

subroutine sub2()
integer :: a
a=100
!$omp task private(a)
  a = 200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a /= 200) print *,32
  a = 400
!$omp end task
if (a/=100) print *,42
end

subroutine sub3()
integer :: a=100
!$omp task shared(a)
  a = 200
  !$omp parallel private(a)
    a=300
  !$omp end parallel
  if (a/=200) print *,23
  a = 400
!$omp end task
if (a/=400) print *,33
end

subroutine sub4()
integer :: a
a=100
!$omp task
  if (a /= 100) print *,14
  a = 200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a /= 200) print *,34
  a = 400
!$omp end task
if (a/=100) print *,44
end

subroutine sub5()
integer :: a=100
!$omp task default(firstprivate)
  if (a /= 100) print *,15
  a = 200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a /= 200) print *,35
  a = 400
!$omp end task
if (a/=100) print *,45
end

subroutine sub6()
integer :: a=100
!$omp task default(private)
  a = 200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a /= 200) print *,36
  a = 400
!$omp end task
if (a/=100) print *,46
end

subroutine sub7()
integer :: a=100
!$omp task default(shared)
  a = 200
  !$omp parallel private(a)
    a=300
  !$omp end parallel
  if (a/=200) print *,27
  a = 400
!$omp end task
if (a/=400) print *,37
end

call sub1
call sub2
call sub3
call sub4
call sub5
call sub6
call sub7
print *,'pass'
end

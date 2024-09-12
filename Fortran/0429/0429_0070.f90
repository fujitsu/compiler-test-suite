subroutine sub1()
integer::a
a=100
!$omp do firstprivate(a)
do i=1,1
  if (a/=100) print *,11
  a = 200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a/=200) print *,31
  a = 400
end do
!$omp end do
if (a/=100) print *,41
end

subroutine sub2()
integer::a
a=100
!$omp do private(a)
do i=1,1
  a = 200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a/=200) print *,32
  a = 400
end do
!$omp end do
if (a/=100) print *,42
end

subroutine sub3()
integer :: a
a=100
!$omp do reduction(max:a)
do i=1,1
  a=200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
  if (a/=200) print *,23
  a=400
end do
!$omp end do
if (a/=400) print *,33
end

subroutine sub4()
integer :: a
a=100
!$omp do lastprivate(a)
do i=1,1
  a=200
  !$omp parallel private(a)
  a=300
  !$omp end parallel
  if (a/=200) print *,24
  a=400
end do
!$omp end do
if (a/=400) print *,34
end

call sub1
call sub2
call sub3
call sub4
print *,'pass'
end

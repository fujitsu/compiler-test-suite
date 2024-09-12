call sub1
call sub2
call sub3
call sub4
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp do
do i=1,1
  if (a/=10) print *,11
  a=20
 !$omp task default(private)
 a=30
 !$omp end task
  if (a/=20) print *,21
end do
!$omp end do
if (a/=20) print *,31
end

subroutine sub2
integer a
a=10
!$omp do firstprivate(a)
do i=1,1
  if (a/=10) print *,12
  a=20
 !$omp task default(private)
 a=30
 !$omp end task
  if (a/=20) print *,22
end do
!$omp end do
if (a/=10) print *,32
end

subroutine sub3
integer a
a=10
!$omp do lastprivate(a)
do i=1,1
  a=20
 !$omp task default(private)
 a=30
 !$omp end task
  if (a/=20) print *,23
end do
!$omp end do
if (a/=20) print *,33
end

subroutine sub4
integer a
a=10
!$omp do reduction(max:a)
do i=1,1
  a=20
 !$omp task default(private)
 a=30
 !$omp end task
  if (a/=20) print *,24
end do
!$omp end do
if (a/=20) print *,34
end

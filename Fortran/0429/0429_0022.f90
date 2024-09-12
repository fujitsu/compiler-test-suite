subroutine sub1
integer a
a=10
!$omp do
do i=1,1
  if (a/=10) print *,11
  a = 20
  !$omp task default(firstprivate)
  if (a/=20) print *,21
  a=30
  !$omp end task
  if (a/=20) print *,31
end do 
!$omp end do
if (a/=20) print *,41
end

subroutine sub3
integer a
a=10
!$omp do firstprivate(a)
do i=1,1
  if (a/=10) print *,13
  a = 20
  !$omp task default(firstprivate)
  if (a/=20) print *,23
  a=30
  !$omp end task
  if (a/=20) print *,33
end do 
!$omp end do
if (a/=10) print *,43
end

subroutine sub4
integer a
a=10
!$omp do private(a)
do i=1,1
  a = 20
  !$omp task default(firstprivate)
  if (a/=20) print *,24
  a=30
  !$omp end task
  if (a/=20) print *,34
end do 
!$omp end do
if (a/=10) print *,44
end

subroutine sub5
integer a
a=10
!$omp do lastprivate(a)
do i=1,1
  a = 20
  !$omp task default(firstprivate)
  if (a/=20) print *,25
  a=30
  !$omp end task
  if (a/=20) print *,35
end do 
!$omp end do
if (a/=20) print *,45
end

subroutine sub6
integer a
a=10
!$omp do reduction(max:a)
do i=1,1
  a = 20
  !$omp task default(firstprivate)
  if (a/=20) print *,26
  a=30
  !$omp end task
  if (a/=20) print *,36
end do 
!$omp end do
if (a/=20) print *,46
end

call sub1
call sub3
call sub4
call sub5
call sub6
print *,'pass'
end

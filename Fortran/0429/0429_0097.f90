call sub1
call sub2
call sub3
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp parallel
if (a/=10) print *,1
!$omp barrier
!$omp parallel do reduction(max:a)
do i=1,1
a=20
end do
if (a/=20) print *,2
!$omp end parallel
if (a/=20) print *,3
end

subroutine sub2
integer a
a=10
!$omp parallel shared(a)
if (a/=10) print *,1
!$omp barrier
!$omp parallel do reduction(max:a)
do i=1,1
a=20
end do
if (a/=20) print *,2
!$omp end parallel
if (a/=20) print *,3
end

subroutine sub3
integer a
a=10
!$omp parallel default(shared)
if (a/=10) print *,1
!$omp barrier
!$omp parallel do reduction(max:a)
do i=1,1
a=20
end do
if (a/=20) print *,2
!$omp end parallel
if (a/=20) print *,3
end

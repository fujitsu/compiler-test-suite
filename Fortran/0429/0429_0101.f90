call sub1
call sub2
call sub3
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp parallel
!$omp single
if (a /=10) print *,1
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a/=20) print *,2
!$omp end single
!$omp end parallel
if (a/=20) print *,3
end 

subroutine sub2
integer a
a=10
!$omp parallel 
!$omp single firstprivate(a)
if (a /=10) print *,1
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a/=20) print *,2
!$omp end single
!$omp end parallel
if (a/=10) print *,3
end 

subroutine sub3
integer a
a=10
!$omp parallel 
!$omp single private(a)
a=20
!$omp parallel reduction(max:a)
a=30
!$omp end parallel
if (a/=30) print *,2
!$omp end single
!$omp end parallel
if (a/=10) print *,3
end 

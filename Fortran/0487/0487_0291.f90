subroutine s1
integer:: a,b,c
a=1
b=1
c=1
!$omp parallel private( a,b, c) firstprivate(a1,b1,c1)
a=2
b=2
c=2
!$omp parallel private( a,b, c) firstprivate(a1,b1,c1)
a=2
b=2
c=2
!$omp end parallel
!$omp end parallel
!$omp parallel private( c,b,a) firstprivate(a1,b1,c1)
a=2
b=2
c=2
!$omp parallel private( a,b, c,d) firstprivate(a1,b1,c1)
a=2
b=2
c=2
d=2
!$omp parallel private( a,b, c) firstprivate(a1,b1,c1)
a=2
b=2
c=2
!$omp end parallel
!$omp end parallel
!$omp end parallel
end
call s1
print *,'pass'
end

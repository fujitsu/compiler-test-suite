 integer :: t1, t2, t3, s1,s2,s3
 integer,allocatable:: a(:), b(:), c(:)
!$omp threadprivate(a,b,c,t1,t2,t3)
 t1=2
 t2=2
 t3=2
 s1=3
 s2=3
 s3=3
!$omp parallel copyin(a,t1)
allocate(a(t1))
a=s1
!$omp end parallel
!$omp parallel copyin(b,t2)
allocate(b(t2))
b=s2
!$omp end parallel
!$omp parallel copyin(c,t3)
allocate(c(t3))
c=s3
!$omp end parallel
if (a(1).ne.b(1)) write(6,*) "NG"
if (b(2).ne.c(2)) write(6,*) "NG"
if (a(1).ne.c(2)) write(6,*) "NG"
print *,'pass'
end

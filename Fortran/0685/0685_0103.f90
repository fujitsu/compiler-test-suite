call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
integer a,b,c,d,e
common /com/d
!$omp threadprivate(/com/)
!$omp parallel private(a),shared(b),firstprivate(c),copyin(/com/),if(1.ne.1),default(none),reduction(+:e)
a=1
b=2
c=3
d=4
e=5
if(a.ne.1) print *,"fail"
if(b.ne.2) print *,"fail"
if(c.ne.3) print *,"fail"
if(d.ne.4) print *,"fail"
if(e.ne.5) print *,"fail"
!$OMP end parallel
end
subroutine bbbbb
integer a,b,c,d,e
common /com/d
!$omp threadprivate(/com/)
!$omp parallel private(a)
!$omp parallel shared(b)
!$omp parallel firstprivate(c)
!$omp parallel copyin(/com/)
!$omp parallel if(1.ne.1)
!$omp parallel reduction(+:e)
a=1
b=2
c=3
d=4
e=5
if(a.ne.1) print *,"fail"
if(b.ne.2) print *,"fail"
if(c.ne.3) print *,"fail"
if(d.ne.4) print *,"fail"
if(e.ne.5) print *,"fail"
!$OMP end parallel
!$OMP end parallel
!$OMP end parallel
!$OMP end parallel
!$OMP end parallel
!$OMP end parallel
end

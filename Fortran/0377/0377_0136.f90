call sub()
contains
subroutine sub()
save ip1
pointer (ip1,var1)
!$OMP threadprivate(ip1)
!$omp parallel default(private)
!$omp parallel 
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private)
!$omp parallel
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(shared)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private)
!$omp parallel default(shared)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(firstprivate)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private)
!$omp parallel default(firstprivate)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(private)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private)
!$omp parallel default(private)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(shared) 
!$omp parallel default(private)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(shared) 
!$omp parallel default(private)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel


print *,"pass"
end subroutine
end


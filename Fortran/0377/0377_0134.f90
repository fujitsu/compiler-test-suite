pointer (ip1,var1)
!$OMP threadprivate(ip1)
integer :: jj
jj=1;jj=jj
!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel 
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel default(shared)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel default(shared)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel default(firstprivate)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel default(firstprivate)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel default(private) private(iii) shared(jj)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(private) private(iii) shared(jj)
!$omp parallel default(private) private(iii) shared(jj)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel

!$omp parallel default(shared) 
!$omp parallel default(private) private(iii) shared(jj)
if (1.eq.2) then
if (ip1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel
!$omp parallel default(shared) 
!$omp parallel default(private) private(iii) shared(jj)
if (1.eq.2) then
if (var1.ne.1) print *,'fail'
endif
!$omp endparallel
!$omp endparallel


print *,"pass"
end


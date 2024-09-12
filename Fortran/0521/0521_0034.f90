i1=1
j2=1
    !$OMP master
    !$OMP parallel default(private) 
    !$OMP parallel
i1=2
j2=2
    !$OMP simd collapse(2)
    DO i1 = 1, 2
    DO j2 = 1, 2
    END DO
    END DO
   !$OMP END simd
    !$OMP parallel shared(i1,j2)
if (i1.ne.3) print *,'ng1-1'
if (j2.ne.3) print *,'ng2-1'
    !$OMP endparallel
    !$OMP END parallel 
    !$OMP END parallel 
    !$OMP ENDmaster
if (i1.ne.1) print *,'ng1',i1
if (j2.ne.1) print *,'ng2',j2
print *,'pass'
end


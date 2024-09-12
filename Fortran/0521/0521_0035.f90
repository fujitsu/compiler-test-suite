i1=1
j2=2
j3=3
    !$OMP parallel  default(private)
    !$OMP master
    !$OMP simd collapse(2)
    DO i1 = 1, 100
    DO j2 = 1, 100
j3=1
    END DO
    END DO
   !$OMP END simd
if (i1.ne.101) print *,'ng1'
if (j2.ne.101) print *,'ng2'
if (j3.ne.1) print *,'ng3'
    !$OMP END master
    !$OMP END parallel 
if (i1.ne.1) print *,'ng1'
if (j2.ne.2) print *,'ng2'
if (j3.ne.3) print *,'ng3'
print *,'pass'
end


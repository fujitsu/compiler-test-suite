integer :: a
!$omp threadprivate(a)
    i=1
    !$OMP SINGLE
       i=i
    !$OMP END SINGLE COPYPRIVATE(A)
    !$OMP SINGLE
       i=i
    !$OMP END SINGLE NOWAIT 
    !$OMP SINGLE
       i=i
    !$OMP END SINGLE NOWAIT
    !$OMP SINGLE
       i=i
    !$OMP END SINGLE
    !$OMP SINGLE
       i=i
    !$OMP END SINGLE
print *,'pass'
    end 

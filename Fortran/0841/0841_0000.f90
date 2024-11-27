!$omp ordered simd , safelen(i), simdlen(i)
!$omp end ordered
!$omp ordered simd  safelen(i) simdlen(i)
!$omp end ordered
end program



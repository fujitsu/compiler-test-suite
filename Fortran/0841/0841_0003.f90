!$omp end ordered
!$omp ordered
!$omp end ordered
!$omp ordered threads
!$omp end ordered
!$omp ordered threads simd
!$omp end ordered
!$omp ordered simd threads
!$omp end ordered
!$omp ordered threads simd depend(source)
!$omp end ordered
!$omp ordered depend(source) simd
!$omp ordered simd firstprivate(i) private(i)
!$omp end ordered
!$omp ordered simd abcdabcd
!$omp end ordered
!$omp ordered threads abcdabcd
!$omp end ordered
!$omp ordered abcdabcd simd
!$omp end ordered
!$omp ordered abcdabcd threads
!$omp end ordered
!$omp ordered depend(source) firstprivate(i)
!$omp ordered depend(source) firstprivate(ii) simd(iii)
end


!$omp ordered,
!$omp end ordered
!$omp ordered 1
!$omp end ordered 
!$omp ordered 1, 
!$omp end ordered
!$omp ordered 1 simd
!$omp end ordered
!$omp ordered 1, simd
!$omp end ordered
!$omp ordered simd abcd
!$omp end ordered
!$omp ordered simd, abcd
!$omp end ordered
!$omp ordered 1 simd abcdabcd
!$omp end ordered
!$omp ordered 1, simd, abcdabcd
!$omp end ordered
end


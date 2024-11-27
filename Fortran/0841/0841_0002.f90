!$omp ordered abcd,simd,threads
!$omp end ordered
!$omp ordered simd,abcd
!$omp end ordered
!$omp ordered simd,threads
!$omp end ordered

!$omp ordered threads,abcd
!$omp end ordered
!$omp ordered abcd,threads,abcd
!$omp end ordered

!$omp task abcd
!$omp end task

!$omp ordered abcd simd threads
!$omp end ordered
!$omp ordered simd abcd
!$omp end ordered
!$omp ordered simd threads
!$omp end ordered

!$omp ordered threads abcd
!$omp end ordered
!$omp ordered abcd threads abcd
!$omp end ordered
!$omp ordered abcd simd abcd
!$omp end ordered
!$omp ordered simd abcd abcd
!$omp end ordered
end program



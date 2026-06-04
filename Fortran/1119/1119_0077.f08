!$omp declare target
!$omp distribute parallel do
!$omp distribute parallel do simd
!$omp distribute simd
!$omp end distribute
!$omp end distribute parallel do
!$omp end distribute parallel do simd
!$omp end distribute simd
!$omp end target
!$omp end target data
!$omp end target parallel
!$omp end target parallel do
!$omp end target parallel do simd
!$omp end target simd
!$omp end target teams
!$omp end target teams distribute
!$omp end target teams distribute parallel do
!$omp end target teams distribute parallel do simd
!$omp end target teams distribute simd
!$omp end teams
!$omp end teams distribute
!$omp end teams distribute parallel do
!$omp end teams distribute parallel do simd
!$omp end teams distribute simd
!$omp target data
!$omp target enter data
!$omp target exit data
!$omp target parallel
!$omp target parallel do
!$omp target parallel do simd
!$omp target simd
!$omp target teams
!$omp target teams distribute
!$omp target teams distribute parallel do
!$omp target teams distribute parallel do simd
!$omp target teams distribute simd
!$omp target update
!$omp teams distribute
!$omp teams distribute parallel do
!$omp teams distribute parallel do simd
!$omp teams distribute simd
print *,'pass'
end

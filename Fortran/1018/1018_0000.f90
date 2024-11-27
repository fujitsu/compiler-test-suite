!$omp do simd
do i=1,1
!$omp atomic
j=j+1
end do
!$omp end do simd

!$omp do simd
do i=1,1
!$omp atomic write
j=+1
!$omp end atomic
end do
!$omp end do simd

!$omp do simd
do i=1,1
!$omp atomic capture
k=l
l=l+1
!$omp end atomic
end do
!$omp end do simd


end

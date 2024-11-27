!$omp do
 do i=1,1
!$omp parallel do simd
 do j=1,1
 enddo
!$omp end parallel do simd
 enddo


!$omp do
 do i=1,1
!$omp do simd
 do j=1,1
 enddo
!$omp end do simd
 enddo
end

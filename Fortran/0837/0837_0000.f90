common /com/ ii,j
!$omp simd collapse(2)
do ii=1,1
do j=1,1
end do
end do
!$omp end simd
end

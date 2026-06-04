integer :: ia
ia=1
ib=1
!$omp task
!$omp simd lastprivate(ia)
 do i1=1,10
ia=1
 ib = ia
 enddo
!$omp end simd
!$omp endtask
print *,'pass'
end

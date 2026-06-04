i3=1
ia=1
b=1
!$omp  task
do iia=1,1
!$omp simd collapse(2) lastprivate(ia)
do i=1,1
do ii=1,1
do iii=1,1
ia=1
 b =  ia
 enddo
 enddo
 enddo
!$omp end simd
end do
!$omp  endtask
print *,"pass"
end

